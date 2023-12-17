//
//  TextFieldStyleExtension.swift
//  StyleSample
//
//  https://github.com/RyoDeveloper/StyleSample
//  Copyright © 2023 RyoDeveloper. All rights reserved.
//

import Foundation
import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    @FocusState private var isFocused: Bool

    init(isFocused: FocusState<Bool>) {
        self._isFocused = isFocused
    }

    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .frame(maxWidth: .infinity)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(isFocused ? .orange : .gray, lineWidth: 1)
            )
    }
}

extension TextFieldStyle where Self == CustomTextFieldStyle {
    static func customTextField(isFocused: FocusState<Bool>) -> CustomTextFieldStyle {
        CustomTextFieldStyle(isFocused: isFocused)
    }
}
