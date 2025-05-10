//
//  MeetYouOnboardingView.swift
//  DailyYou
//
//  Created by BSTAR on 09/05/2025.
//

import SwiftUI

struct MeetYouOnboardingView: View {
    
    @State var fullName: String = ""
    @State var selectedAge: String = ""
    @State var selectedGender: String = ""
    @State var showDatePicker: Bool = false
    @State var showGenderPicker: Bool = false
    
    var body: some View {
        ScrollView {
            
            VStack {
                Image(.profile)
                    .resizable()
                    .frame(width: 150, height: 150)
                
                VStack(spacing: 10) {
                    Text("Meet You")
                        .font(.boldFont(size: 40))
                    
                    Text("Tell us about yourself to personlize your experience")
                        .font(.appHeadline)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
                
                InputField(
                    text: $fullName,
                    placeHolder: "Enter fullname",
                    label: "Name"
                )
                
                InputField(
                    text: $selectedAge,
                    placeHolder: "Select date",
                    label: "Birthday",
                    disabled: true,
                    suffixIcon: "calendar") {
                        showDatePicker = true
                    }
                    .sheet(isPresented: $showDatePicker) {
                        DatePickerView(selectedAge: $selectedAge)
                            .presentationDetents([.medium])
                            .interactiveDismissDisabled()
                    }
                
                InputField(
                    text: $selectedGender,
                    placeHolder: "Select gender",
                    label: "Gender",
                    disabled: true,
                    suffixIcon: "chevron.down",
                    onSuffixTap: {
                        showGenderPicker = true
                    }
                )
                .sheet(isPresented: $showGenderPicker) {
                    GenderPickerView(selectedGender: $selectedGender)
                        .presentationDetents([.fraction(0.3)])
                        .interactiveDismissDisabled()
                }

                
            }
            
        }
    }
    
}

#Preview {
    MeetYouOnboardingView()
}
