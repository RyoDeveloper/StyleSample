//
//  ProgressViewStyleExtension.swift
//  StyleSample
//
//  https://github.com/RyoDeveloper/StyleSample
//  Copyright © 2023 RyoDeveloper. All rights reserved.
//

import Foundation
import SwiftUI

struct CustomProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        let value = configuration.fractionCompleted ?? 0.0

        VStack(alignment: .leading) {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    Capsule()
                        .foregroundStyle(Color(.systemGray6))
                        .frame(width: geometry.size.width, height: 10)
                    Capsule()
                        .foregroundStyle(.orange)
                        .frame(width: CGFloat(value) * geometry.size.width, height: 10)
                        .animation(.default, value: value)
                }
            }
        }
        .frame(height: 10)
    }
}

extension ProgressViewStyle where Self == CustomProgressViewStyle {
    static var customProgressView: CustomProgressViewStyle {
        .init()
    }
}
