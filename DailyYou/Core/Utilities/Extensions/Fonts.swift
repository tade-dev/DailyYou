//
//  Fonts.swift
//  DailyYou
//
//  Created by BSTAR on 09/05/2025.
//

import SwiftUICore

extension Font {
    
    //MARK: FUNCTIONS
    
    static func boldFont(size: CGFloat) -> Font {
        .custom("Urbanist-Bold", size: size)
    }
    
    static func semiBoldFont(size: CGFloat) -> Font {
        .custom("Urbanist-SemiBold", size: size)
    }
    
    static func mediumFont(size: CGFloat) -> Font {
        .custom("Urbanist-Medium", size: size)
    }
    
    func regularFont(size: CGFloat) -> Font {
        .custom("Urbanist-Regular", size: size)
    }
    
    //MARK: COMPLETIONS
    
    static var appTitle: Font {
        .custom("Urbanist-Bold", size: 30)
    }
    
    static var appHeadline: Font {
        .custom("Urbanist-Medium", size: 20)
    }
    
    static var appBody: Font {
        .custom("Urbanist-Regular", size: 16)
    }
    
    static var appTitle2: Font {
        .custom("Urbanist-SemiBold", size: 26)
    }
    
}
