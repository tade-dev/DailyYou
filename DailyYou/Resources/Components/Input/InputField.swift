//
//  InputField.swift
//  DailyYou
//
//  Created by BSTAR on 10/05/2025.
//

import SwiftUI

struct InputField: View {
    
    @Binding var text: String
    var placeHolder: String
    var label: String?
    var keyboardType: UIKeyboardType = .default
    var disabled: Bool = false
    var suffixIcon: String?
    var onSuffixTap: (()-> Void)? = nil
    
    var body: some View {

        VStack(alignment: .leading) {
            Text(label ?? "Label")
                .font(.appHeadline)
            TextField(
                placeHolder,
                text: $text
            )
            .foregroundStyle(.primary)
            .disabled(disabled)
            .keyboardType(keyboardType)
            .overlay(alignment: .trailing) {
                if disabled {
                    Button {
                        onSuffixTap?()
                    } label: {
                        Image(systemName: suffixIcon ?? "")
                            .foregroundStyle(.gray)
                    }

                }
            }
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 15)
                .stroke(.gray)
                .fill(Color(hex: "#F9F9F9"))
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 10)
        
    }
}

#Preview {
    InputField(text: .constant(""), placeHolder: "Enter name")
}
