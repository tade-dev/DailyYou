//
//  BTN.swift
//  DailyYou
//
//  Created by BSTAR on 09/05/2025.
//

import SwiftUI

struct BTN: View {
    
    var title: String?
    var icon: String?
    var hasIcon: Bool? = false
    var bgColor: Color? = .accent
    var onTap: ()-> Void
    
    var body: some View {
        
        Button(action: onTap) {
            Text(title ?? "Continue")
                .font(.appHeadline)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .frame(height: 40)
        }
        .accentColor(bgColor)
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.roundedRectangle(radius: 10))
        .haptic(.medium)
        
    }
    
    
}

#Preview {
    BTN {
        
    }
}
