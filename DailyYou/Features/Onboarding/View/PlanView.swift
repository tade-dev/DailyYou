//
//  PlanView.swift
//  DailyYou
//
//  Created by BSTAR on 09/05/2025.
//


import SwiftUI

struct PlanView: View {
    
    @State var plan: String = ""
    
    var body: some View {
        ScrollView {
            
            VStack {
                Image(.logo)
                    .resizable()
                    .frame(width: 150, height: 150)
                
                VStack(spacing: 10) {
                    Text("Plan Ahead")
                        .font(.boldFont(size: 40))
                    
                    Text("What do you want to accomplish with DailyYou?")
                        .font(.appHeadline)
                        .padding(.horizontal, 20)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
                
                InputField(
                    text: $plan,
                    placeHolder: "Enter your plan/goal",
                    label: "Plan/Goal",
                )
                
            }
            
        }
        
    }
    
}

#Preview {
    PlanView()
}
