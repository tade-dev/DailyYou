//
//  OnboardingView.swift
//  DailyYou
//
//  Created by BSTAR on 09/05/2025.
//


import SwiftUI

struct OnboardingView: View {
    
    @StateObject var vm = OnboardingViewModel()
    
    var body: some View {
        VStack {
            CustomProgressIndicator(progress: vm.getCurrentPercent())
            
            TabView(selection: $vm.currentItem) {
                
                MeetYouOnboardingView()
                    .tag(0.0)
                
                OccupationView()
                    .tag(1.0)
                
                PurposeView()
                    .tag(2.0)
                
                PlanView()
                    .tag(3.0)
                
                AllSetView()
                    .tag(4.0)
                    
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            BTN {
                vm.updateCurrentView()
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    OnboardingView()
}
