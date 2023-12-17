//
//  FontExtension.swift
//  StyleSample
//
//  https://github.com/RyoDeveloper/StyleSample
//  Copyright © 2023 RyoDeveloper. All rights reserved.
//

import Foundation
import SwiftUI

extension Font {
    /// システムフォント かつ ダイナミックタイプに対応させたい時
    static var systemDynamic: Font {
        return Font.custom("", size: 20)
    }

    /// システムフォント かつ ダイナミックタイプに対応させたくない時
    static var systemFixed: Font {
        return Font.system(size: 20)
    }

    /// カスタムフォント かつ ダイナミックタイプに対応させたい時
    static var customDynamic: Font {
        return Font.custom("FontName", size: 20)
    }

    /// カスタムフォント かつ ダイナミックタイプに対応させたくない時
    static var customFixed: Font {
        return Font.custom("FontName", fixedSize: 20)
    }
}
