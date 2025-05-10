//
//  OccupationView.swift
//  DailyYou
//
//  Created by BSTAR on 09/05/2025.
//


import SwiftUI

struct OccupationView: View {
    
    @State var occupation: String = ""
    
    var body: some View {
        ScrollView {
            
            VStack {
                Image(.briefcase)
                    .resizable()
                    .frame(width: 150, height: 150)
                
                VStack(spacing: 10) {
                    Text("Occupation")
                        .font(.boldFont(size: 40))
                    
                    Text("What is your current occupation?")
                        .font(.appHeadline)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
                
                InputField(
                    text: $occupation,
                    placeHolder: "Occupation",
                    label: "Select your occupation",
                    disabled: true,
                    suffixIcon: "chevron.down"
                )
                
            }
            
        }
    }
}

#Preview {
    OccupationView()
}
