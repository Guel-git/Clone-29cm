//
//  UIColor+Extension.swift
//  Clone-29cm
//
//  Created by 김유나 on 2023/08/22.
//

import UIKit

extension UIColor {
    
    // MARK: - black
    
    static var labelBlack: UIColor {
        return UIColor(hex: "#000000")
    }
    
    static var backgroundBlack: UIColor {
        return UIColor(hex: "#303032")
    }
    
    // MARK: - grey
    
    static var labelGrey: UIColor {
        return UIColor(hex: "#050505")
    }
    
    static var backgroundGrey: UIColor {
        return UIColor(hex: "#F5F5F5")
    }
    
    static var borderGrey: UIColor {
        return UIColor(hex: "#E4E4E4")
    }
    
    static var iconGrey: UIColor {
        return UIColor(hex: "#5E5E5E")
    }
    
    // MARK: - white
    
    static var iconWhite: UIColor {
        return UIColor(hex: "#FFFDFE")
    }
    
    // MARK: - orange
    
    static var labelOrange: UIColor {
        return UIColor(hex: "#FE4507")
    }
    
    static var iconOrange: UIColor {
        return UIColor(hex: "#FF4802")
    }
}

extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var hexFormatted: String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()

        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }

        assert(hexFormatted.count == 6, "Invalid hex code used.")
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)

        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0, alpha: alpha)
    }
}
