//
//  LabelStyleExtension.swift
//  StyleSample
//
//  https://github.com/RyoDeveloper/StyleSample
//  Copyright © 2023 RyoDeveloper. All rights reserved.
//

import Foundation
import SwiftUI

struct TitleAndImageLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: "square")
                .foregroundStyle(Color.clear)
                .background(
                    configuration.icon
                        .scaledToFit()
                )
            configuration.title
        }
    }
}

extension LabelStyle where Self == TitleAndImageLabelStyle {
    static var titleAndImage: TitleAndImageLabelStyle {
        .init()
    }
}
