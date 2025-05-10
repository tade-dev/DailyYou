//
//  AllSetView.swift
//  DailyYou
//
//  Created by BSTAR on 09/05/2025.
//


import SwiftUI

struct AllSetView: View {
    
    var body: some View {

        VStack {
            Image(.checkMark)
                .resizable()
                .frame(width: 200, height: 200)
            
            VStack(spacing: 10) {
                Text("All Set")
                    .font(.boldFont(size: 40))
                
                Text("You're all set up and ready to start using DailyYou")
                    .font(.appHeadline)
            }
            .multilineTextAlignment(.center)
            .padding(.bottom, 20)
            
        }
        .padding(.horizontal, 20)

    }
    
}

#Preview {
    AllSetView()
}
