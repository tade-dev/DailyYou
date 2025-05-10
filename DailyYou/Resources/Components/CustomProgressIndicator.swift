//
//  CustomProgressIndicator.swift
//  DailyYou
//
//  Created by BSTAR on 09/05/2025.
//

import SwiftUI

struct CustomProgressIndicator: View {
    
    var progress: Double
    
    var body: some View {
        ProgressView(value: progress)
            .progressViewStyle(.linear)
            .foregroundStyle(.accent)
            .padding()
    }
}

#Preview {
    CustomProgressIndicator(progress: 0.3)
}
