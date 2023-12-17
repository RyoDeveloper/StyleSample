//
//  ButtonStyleExtension.swift
//  StyleSample
//
//  https://github.com/RyoDeveloper/StyleSample
//  Copyright © 2023 RyoDeveloper. All rights reserved.
//

import Foundation
import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled: Bool

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.body)
            .foregroundColor(isEnabled ? .white : Color(.placeholderText))
            .padding()
            .background(isEnabled ? .orange : Color(.secondarySystemFill))
            .opacity(configuration.isPressed ? 0.2 : 1.0) // タップしている間は色を薄く
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .hoverEffect()
    }
}

extension ButtonStyle where Self == CustomButtonStyle {
    static var customButton: CustomButtonStyle {
        .init()
    }
}
