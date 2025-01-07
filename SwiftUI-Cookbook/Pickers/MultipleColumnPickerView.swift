//
//  MultipleColumnPickerView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/7/25.
//

import SwiftUI

struct MultipleColumnPickerView: View {
    @State private var selectedHour: Int = 0
    @State private var selectedMinute: Int = 0
    
    var selectedTime: Date? {
        var calendarDateComponents = Calendar.current.dateComponents([.day, .year, .month], from: Date())
        calendarDateComponents.hour = selectedHour
        calendarDateComponents.minute  = selectedMinute
        
        let current = Calendar.current.date(from: calendarDateComponents)
        return current
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Spacer()
                    VStack{
                        Text("Hour")
                        Picker("Hour", selection: $selectedHour){
                            ForEach(1...12, id:\.self){ hour in
                                Text("\(hour)").tag(hour)
                            }
                        }.pickerStyle(.inline)
                            .frame(width: geometry.size.width/3)
                    }
                    
                    VStack{
                        Text("Minute")
                        Picker("Minute", selection: $selectedMinute){
                            ForEach(0...59, id:\.self){ minute in
                                Text(minute.formatted(.number.precision(.integerLength(2))))
                                    .tag(minute)
                            }
                        }.pickerStyle(.inline)
                            .frame(width: geometry.size.width/3)
                    }
                    Spacer()
                }
                Text("Selected Time")
                if let time = selectedTime{
                    Text("\(time)")
                    Text(time.formatted())
                }
            }
        }
    }
}

#Preview {
    MultipleColumnPickerView()
}
