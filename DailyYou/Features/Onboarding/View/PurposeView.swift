//
//  PurposeView.swift
//  DailyYou
//
//  Created by BSTAR on 09/05/2025.
//

import SwiftUI

struct PurposeView: View {
    
    @State var purpose: String = ""
    
    var body: some View {
        ScrollView {
            
            VStack {
                Image(.logo)
                    .resizable()
                    .frame(width: 150, height: 150)
                
                VStack(spacing: 10) {
                    Text("What brings you to DailyYou")
                        .font(.boldFont(size: 40))
                    
                    Text("Choose your primary reason for using the app")
                        .font(.appHeadline)
                        .padding(.horizontal, 20)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
                
                InputField(
                    text: $purpose,
                    placeHolder: "Purpose",
                    label: "Choose your purpose",
                    disabled: true,
                    suffixIcon: "chevron.down"
                )
                
            }
            
        }
    }
    
}

#Preview {
    PurposeView()
}
