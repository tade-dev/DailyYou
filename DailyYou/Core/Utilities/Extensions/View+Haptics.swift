//
//  View+Haptics.swift
//  DailyYou
//
//  Created by BSTAR on 10/05/2025.
//

import SwiftUI

struct HapticModifier: ViewModifier {
    let style: UIImpactFeedbackGenerator.FeedbackStyle

    func body(content: Content) -> some View {
        content
            .onTapGesture {
                if HapticManager.instance.isEnabled {
                    HapticManager.instance.impact(style)
                }
            }
    }
}

struct HapticOnAppearModifier: ViewModifier {
    let style: UIImpactFeedbackGenerator.FeedbackStyle

    func body(content: Content) -> some View {
        content
            .onAppear {
                if HapticManager.instance.isEnabled {
                    HapticManager.instance.impact(style)
                }
            }
    }
}

extension View {
    func haptic(_ style: UIImpactFeedbackGenerator.FeedbackStyle = .light) -> some View {
        self.modifier(HapticModifier(style: style))
    }
}

extension View {
    func hapticOnAppear(_ style: UIImpactFeedbackGenerator.FeedbackStyle = .light) -> some View {
        self.modifier(HapticOnAppearModifier(style: style))
    }
}
