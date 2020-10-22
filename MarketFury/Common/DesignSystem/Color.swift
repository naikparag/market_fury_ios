//
//  Color+Extension.swift
//

import SwiftUI

extension Color {

    static private let purple = Color(hex: "#6200EE")
    static private let green = Color(hex: "#03DAC6")
    static private let black = Color(hex:"#121212")
    static private let white = Color(hex: "#FFFFFF")
    static private let offWhite = Color(hex: "#EFEFEF")
    static private let red = Color(hex: "#C51162")
    
    static let themePrimary = purple
    static let themeSecondary = green
    static let themeSurface = offWhite
    static let themeBackground = white
    static let themeError = red
    
    static let themeOnPrimary = white
    static let themeOnSecondary = black
    static let themeOnSurface = black
    static let themeOnBackground = black
    static let themeOnError = white
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


struct Color_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading, spacing: 8){
            Text("Hello, World! - primary")
                .background(Color.themePrimary)
                .foregroundColor(Color.themeOnPrimary)
                .padding()
            Text("Hello, World! - secondary")
                .background(Color.themeSecondary)
                .foregroundColor(.themeOnSecondary)
                .padding()
            Text("Hello, World! - error")
                .background(Color.themeError)
                .foregroundColor(.themeOnError)
                .padding()
        }
    }
}
