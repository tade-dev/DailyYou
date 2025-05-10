//
//  GenderPickerView.swift
//  DailyYou
//
//  Created by BSTAR on 10/05/2025.
//

import SwiftUI

struct GenderPickerView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    @Binding var selectedGender: String
    
    var body: some View {
        VStack {
            Picker("Select Gender", selection: $selectedGender) {
                Text("Male")
                    .tag("Male")
                
                Text("Female")
                    .tag("Female")
            }
            .pickerStyle(WheelPickerStyle())
            
            BTN(title: "Done") {
                presentationMode.wrappedValue.dismiss()
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    GenderPickerView(selectedGender: .constant(""))
}
