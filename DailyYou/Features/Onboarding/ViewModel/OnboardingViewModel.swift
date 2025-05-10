//
//  OnboardingViewModel.swift
//  DailyYou
//
//  Created by BSTAR on 09/05/2025.
//

import Foundation
import SwiftUI


class OnboardingViewModel: ObservableObject {
    
    @Published var currentItem: Double = 0.0
    @Published var onboardingViews = [
        MeetYouOnboardingView(),
        OccupationView(),
        PurposeView(),
        PlanView(),
        AllSetView(),
    ]
    
    func updateCurrentView() {
        if currentItem < 4 {
            currentItem += 1
        }
    }
    
    func getCurrentPercent() -> Double {
        currentItem / Double(onboardingViews.count)
    }
    
}
