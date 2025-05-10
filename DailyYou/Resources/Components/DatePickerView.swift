//
//  DatePickerView.swift
//  DailyYou
//
//  Created by BSTAR on 10/05/2025.
//

import SwiftUI

struct DatePickerView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    @Binding var selectedAge: String
    @State var dateTime: Date = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
    
    var body: some View {
        VStack {
            DatePicker("", selection: $dateTime, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .onChange(of: dateTime) { oldValue, newValue in
                    selectedAge = dateFormatter.string(from: newValue)
                }
            
            BTN(title: "Done") {
                presentationMode.wrappedValue.dismiss()
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    DatePickerView(selectedAge: .constant(""))
}
