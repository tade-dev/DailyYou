//
//  Color.swift
//  DailyYou
//
//  Created by BSTAR on 09/05/2025.
//

import SwiftUICore

extension Color {
    
    static var background: Color {
        Color("primary-background")
    }
    
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        let scanner = Scanner(string: hex)

        if hex.hasPrefix("#") {
            scanner.currentIndex = scanner.string.index(after: scanner.currentIndex)
        }
        var hexNumber: UInt64 = 0
        scanner.scanHexInt64(&hexNumber)
        
        let r, g, b, a: Double
        switch hex.count - (hex.hasPrefix("#") ? 1 : 0) {
        case 6:
            r = Double((hexNumber & 0xFF0000) >> 16) / 255
            g = Double((hexNumber & 0x00FF00) >> 8) / 255
            b = Double( hexNumber & 0x0000FF       ) / 255
            a = 1.0
        case 8:
            r = Double((hexNumber & 0xFF000000) >> 24) / 255
            g = Double((hexNumber & 0x00FF0000) >> 16) / 255
            b = Double((hexNumber & 0x0000FF00) >> 8 ) / 255
            a = Double( hexNumber & 0x000000FF        ) / 255
        default:

            r = 0; g = 0; b = 0; a = 1
        }
        
        self.init(.sRGB, red: r, green: g, blue: b, opacity: a)
    }

    init(hex: UInt, alpha: Double = 1) {
        let r = Double((hex & 0xFF0000) >> 16) / 255
        let g = Double((hex & 0x00FF00) >> 8 ) / 255
        let b = Double( hex & 0x0000FF       ) / 255
        self.init(.sRGB, red: r, green: g, blue: b, opacity: alpha)
    }
    
}
