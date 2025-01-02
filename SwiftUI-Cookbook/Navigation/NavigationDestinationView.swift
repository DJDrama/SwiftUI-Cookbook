//
//  PerformNavigationProgrammaticallyView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/2/25.
//

import SwiftUI

struct NavigationDestinationView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoginSuccess: Bool  = false
    @State private var isLoading: Bool = false
    
    // Fake login (2 seconds)
    private func login(){
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
            isLoginSuccess = true
            isLoading = false
        }
    }
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("User name", text: $username)
                SecureField("Password", text: $password)
                HStack{
                    Spacer()
                    if isLoading {
                        ProgressView()
                    }else {
                        Button("Login") {
                            login()
                        }
                    }
                    Spacer()
                }.buttonStyle(PlainButtonStyle())
            }.navigationTitle("Login")
                .navigationDestination(isPresented: $isLoginSuccess) {
                    LoginSuccessView()
                }
        }
    }
}
struct LoginSuccessView: View{
    var body: some View {
        Text("Login Success!")
            .navigationBarBackButtonHidden() // HIDE navigation back button
    }
}

#Preview {
    NavigationDestinationView()
}
