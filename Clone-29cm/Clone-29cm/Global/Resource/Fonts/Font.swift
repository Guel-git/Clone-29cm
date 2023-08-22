//
//  Font.swift
//  Clone-29cm
//
//  Created by 김유나 on 2023/08/22.
//

import UIKit

enum Font: String {
    case Black = "NotoSansKR-Black"
    case Bold = "NotoSansKR-Bold"
    case ExtraBold = "NotoSansKR-ExtraBold"
    case ExtraLight = "NotoSansKR-ExtraLight"
    case Light = "NotoSansKR-Light"
    case Medium = "NotoSansKR-Medium"
    case Regular = "NotoSansKR-Regular"
    case SemiBold = "NotoSansKR-SemiBold"
    case Thin = "NotoSansKR-Thin"
    
    func of(size: CGFloat) -> UIFont {
        return UIFont(name: self.rawValue, size: size)!
    }
}
