//
//  Color+Extension.swift
//

import SwiftUI

extension Color {

    static private let purple = Color(hex: "#323232")
    static private let green = Color(hex: "#03DAC6")
    static private let black = Color(hex:"#121212")
    static private let white = Color(hex: "#FFFFFF")
    static private let red = Color(hex: "#C51162")
    
    static let primary = purple
    static let secondary = green
    static let surface = white
    static let background = white
    static let error = red
    
    static let onPrimary = white
    static let onSecondary = black
    static let onSurface = black
    static let onBackground = black
    static let onError = white
}

extension Color {
    
    init(hex: String) {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000FF) / 255.0
        
        self.init(.sRGB, red: red, green: green, blue: blue)
    }
}
