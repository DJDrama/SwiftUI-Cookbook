//
//  DisplayQuarterHalfFullScreenSheetView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/6/25.
//

import SwiftUI

enum SheetMode {
    case none
    case quarter
    case half
    case full
}

struct DisplayQuarterHalfFullScreenSheetView: View {
    @State private var sheetMode: SheetMode = .none
    
    var body: some View {
        ZStack {
            FlexibleSheet(sheetMode: $sheetMode) {
                VStack {
                    Text("Hello World!")
                        .foregroundStyle(.white)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.green)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            }
            
            Button("Show"){
                switch sheetMode {
                    
                case .none:
                    sheetMode = .quarter
                case .quarter:
                    sheetMode = .half
                case .half:
                    sheetMode = .full
                case .full:
                    sheetMode = .none
                }
            }
        }
    }
}

struct FlexibleSheet<Content: View>: View {
    let content: () -> Content
    var sheetMode: Binding<SheetMode>
    
    init(sheetMode: Binding<SheetMode>, @ViewBuilder content: @escaping () -> Content) {
        self.content = content
        self.sheetMode = sheetMode
    }
    
    private func calculateOffset() -> CGFloat {
        switch sheetMode.wrappedValue {
        case .none:
            return UIScreen.main.bounds.height
        case .quarter:
            return UIScreen.main.bounds.height - 200
        case .half:
            return UIScreen.main.bounds.height / 2
        case .full:
            return 0
        }
    }
    
    var body: some View{
        content()
            .offset(y: calculateOffset())
            .animation(.spring(), value: UUID())
            .ignoresSafeArea(.all)
    }
}

#Preview {
    DisplayQuarterHalfFullScreenSheetView()
}
