//
//  Typography.swift
//

import SwiftUI

// h1
struct h1Modifier: ViewModifier {
    
    let font = Font.system(size: 36).weight(.light)
    func body(content: Content) -> some View {
        content
            .font(font)
            .foregroundColor(.primary)
    }
}

extension View {
    func h1() -> some View {
            self.modifier(h1Modifier())
        }
}

// h2
struct h2Modifier: ViewModifier {
    
    let font = Font.system(size: 26).weight(.semibold)
    func body(content: Content) -> some View {
        content
            .font(font)
    }
}

extension View {
    func h2() -> some View {
            self.modifier(h2Modifier())
        }
}

// h3
struct h3Modifier: ViewModifier {
    
    let font = Font.system(size: 20).weight(.semibold)
    func body(content: Content) -> some View {
        content
            .font(font)
    }
}

extension View {
    func h3() -> some View {
            self.modifier(h3Modifier())
        }
}
