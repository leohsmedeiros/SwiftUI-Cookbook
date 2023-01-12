//
//  MultiColumnPickerView.swift
//  Pickers
//
//  Created by Leonardo Medeiros on 12/01/23.
//

import SwiftUI

struct MultiColumnPickerView: View {
    @State private var selectedHour: Int = 0
    @State private var selectedMinute: Int = 0
    
    var selectedTime: Date? {
        var calendarDateComponents = Calendar.current.dateComponents([.day, .year, .month], from: Date())
        
        calendarDateComponents.hour = selectedHour
        calendarDateComponents.minute = selectedMinute
        
        return Calendar.current.date(from: calendarDateComponents)
    }
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Hour")
                    Picker("Hour", selection: $selectedHour) {
                        ForEach(1...12, id:\.self) { hour in
                            Text("\(hour)").tag(hour)
                        }
                    }
                    .pickerStyle(.wheel)
                    .clipped()
                }
                VStack {
                    Text("Minute")
                    Picker("Minute", selection: $selectedMinute) {
                        ForEach(1...60, id:\.self) { minute in
                            Text("\(minute)").tag(minute)
                        }
                    }
                    .pickerStyle(.wheel)
                    .clipped()
                }
            }
            
            selectedTime.map {
                Text("\($0.formatted(.dateTime.hour().minute()))")
                    .font(.caption)
                    .fontWeight(.bold)
            }
        }
    }
}

struct MultiColumnPickerView_Previews: PreviewProvider {
    static var previews: some View {
        MultiColumnPickerView()
    }
}
