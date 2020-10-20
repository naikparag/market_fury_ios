//
//  Color+Extension.swift
//

import SwiftUI

extension Color {

    static private let purple = Color(hexString: "#323232")
    static private let green = Color(hexString: "#03DAC6")
    static private let black = Color(hexString:"#121212")
    static private let white = Color(hexString: "#FFFFFF")
    static private let red = Color(hexString: "#C51162")
    
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
    convenience init(hexString: String) {
        
        let hexString: String = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        if hexString.hasPrefix("#") {
            scanner.scanLocation = 1
        }
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        let mask = 0x000000FF
        let redValue = Int(color >> 16) & mask
        let greenValue = Int(color >> 8) & mask
        let blueValue = Int(color) & mask
        let red = CGFloat(redValue) / 255.0
        let green = CGFloat(greenValue) / 255.0
        let blue = CGFloat(blueValue) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue)
    }
}
