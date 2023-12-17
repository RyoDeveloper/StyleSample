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
    /// システムフォントで、ダイナミックタイプに対応させる
    static var systemDynamic: Font {
        return Font.custom("", size: 20)
    }

    /// システムフォントで、ダイナミックタイプに対応させない
    static var systemFixed: Font {
        return Font.system(size: 20)
    }

    /// カスタムフォントで、ダイナミックタイプに対応させる
    static var customDynamic: Font {
        return Font.custom("FontName", size: 20)
    }

    /// カスタムフォントで、 ダイナミックタイプに対応させない
    static var customFixed: Font {
        return Font.custom("FontName", fixedSize: 20)
    }
}
