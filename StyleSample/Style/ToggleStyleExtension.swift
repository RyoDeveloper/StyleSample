//
//  ToggleStyleExtension.swift
//  StyleSample
//
//  https://github.com/RyoDeveloper/StyleSample
//  Copyright © 2023 RyoDeveloper. All rights reserved.
//

import Foundation
import SwiftUI

struct CustomToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Image(
                systemName: configuration.isOn
                    ? "tortoise" : "hare")
            configuration.label
        }
        .buttonStyle(.plain)
    }
}

extension ToggleStyle where Self == CustomToggleStyle {
    static var customToggle: CustomToggleStyle {
        .init()
    }
}
