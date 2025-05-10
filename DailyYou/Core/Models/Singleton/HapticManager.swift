//
//  HapticManager.swift
//  DailyYou
//
//  Created by BSTAR on 10/05/2025.
//

import Foundation
import SwiftUI

class HapticManager {
    static let instance = HapticManager()

    var isEnabled: Bool = true

    func impact(_ type: UIImpactFeedbackGenerator.FeedbackStyle = .light) {
        guard isEnabled else { return }
        let generator = UIImpactFeedbackGenerator(style: type)
        generator.impactOccurred()
    }
}
