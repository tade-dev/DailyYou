//
//  DailyYouApp.swift
//  DailyYou
//
//  Created by BSTAR on 09/05/2025.
//

import SwiftUI

@main
struct DailyYouApp: App {
    
    let defaultFont = Font.custom("Urbanist-Regular", size: 16)
    
    var body: some Scene {
        WindowGroup(makeContent: {
            ZStack {
                
                Color.background
                    .ignoresSafeArea()
                
                OnboardingView()
                
            }
            .environment(\.font, defaultFont)
        })
    }
}
