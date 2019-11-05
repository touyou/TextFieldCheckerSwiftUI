//
//  UIColor+Extension.swift
//  TextFieldCheckerSwiftUI
//
//  Created by 藤井陽介 on 2019/11/03.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI
import UIKit

extension Color {

    struct Saketify {
        public static let beerYellow = Color(code: "#e8c53b")
        public static let backgroundColor = Color(code: "#060e1e")
        public static let shadowGray = Color(code: "#cccccc")
    }
}

// MARK: Color code interface

extension Color {

    init(code: String) {

        var color: UInt64 = 0
        var r: Double = 0
        var g: Double = 0
        var b: Double = 0
        if Scanner(string: code.replacingOccurrences(of: "#", with: "")).scanHexInt64(&color) {

            r = Double((color & 0xFF0000) >> 16) / 255.0
            g = Double((color & 0x00FF00) >> 8) / 255.0
            b = Double(color & 0x0000FF) / 255.0
        }
        self = Color(red: r, green: g, blue: b)
    }
}

// MARK: UIColor

extension Color {

    var uiColor: UIColor {
        let components = self.components()
        return UIColor(red: components.r, green: components.g, blue: components.b, alpha: components.a)
    }

    private func components() -> (r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {

        let scanner = Scanner(string: self.description.trimmingCharacters(in: CharacterSet.alphanumerics.inverted))
        var hexNumber: UInt64 = 0
        var r: CGFloat = 0, g: CGFloat = 0.0, b: CGFloat = 0.0, a: CGFloat = 0.0

        let result = scanner.scanHexInt64(&hexNumber)
        if result {
            r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
            g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
            b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
            a = CGFloat(hexNumber & 0x000000ff) / 255
        }
        return (r, g, b, a)
    }
}
