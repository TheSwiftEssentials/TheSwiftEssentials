//
//  ColorExtensions.swift
//
//  Copyright 2021 The Swift Essentials
//

import Foundation
import Swift
import SwiftUI

#if canImport(UIKit)
import UIKit
#endif


// MARK: - Initializers

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension Color {
    /// Creates a color.
    /// (The Swift Essentials)
    init(_ colorSpace: Color.RGBColorSpace = .sRGB, red: Int, green: Int, blue: Int, opacity: Double = 1) {
        self.init(
            colorSpace,
            red: Double(red) / 255.0,
            green: Double(green) / 255.0,
            blue: Double(blue) / 255.0,
            opacity: opacity)
    }

    /// Creates a color.
    /// (The Swift Essentials)
    init(_ colorSpace: Color.RGBColorSpace = .sRGB, hex: Int, opacity: Double = 1) {
        self.init(
            colorSpace,
            red: Double((hex & 0xFF0000) >> 16) / 255.0,
            green: Double((hex & 0x00FF00) >> 8) / 255.0,
            blue: Double(hex & 0x0000FF) / 255.0,
            opacity: opacity)
    }
}


// MARK: - Color Colors

// clear, black, white, gray, red, green, blue, orange, yellow, pink, purple, primary, secondary


#if os(macOS)

// MARK: - NSColor Colors
// https://developer.apple.com/documentation/appkit/nscolor

// TODO: Add all colors.

@available(macOS 10.15, *)
public extension Color {
    // Color.black
    
    /// [NSColor] Returns a color object whose grayscale value is 1/3 and whose alpha value is 1.0.
    /// (The Swift Essentials)
    static var darkGray = Color(NSColor.darkGray)
    
    /// [NSColor] Returns a color object whose grayscale value is 2/3 and whose alpha value is 1.0.
    /// (The Swift Essentials)
    static var lightGray = Color(NSColor.lightGray)
    
    // Color.white
    // Color.gray
    // Color.red
    // Color.green
    // Color.blue
    
    /// [NSColor] Returns a color object whose RGB value is 0.0, 1.0, 1.0 and whose alpha value is 1.0.
    /// (The Swift Essentials)
    static var cyan = Color(NSColor.cyan)
    
    
    
    /// [NSColor] Returns a color for red that automatically adapts to vibrancy and accessibility settings.
    /// (The Swift Essentials)
    static var systemRed = Color(NSColor.systemRed)
    
    /// [NSColor] Returns a color for green that automatically adapts to vibrancy and accessibility settings.
    /// (The Swift Essentials)
    static var systemGreen = Color(NSColor.systemGreen)
    
    /// [NSColor] Returns a color for blue that automatically adapts to vibrancy and accessibility settings.
    /// (The Swift Essentials)
    static var systemBlue = Color(NSColor.systemBlue)
    
    /// [NSColor] Returns a color for orange that automatically adapts to vibrancy and accessibility settings.
    /// (The Swift Essentials)
    static var systemOrange = Color(NSColor.systemOrange)
    
    /// [NSColor] Returns a color for yellow that automatically adapts to vibrancy and accessibility settings.
    /// (The Swift Essentials)
    static var systemYellow = Color(NSColor.systemYellow)
    
    /// [NSColor] Returns a color for brown that automatically adapts to vibrancy and accessibility settings.
    /// (The Swift Essentials)
    static var systemBrown = Color(NSColor.systemBrown)
    
    /// [NSColor] Returns a color for pink that automatically adapts to vibrancy and accessibility settings.
    /// (The Swift Essentials)
    static var systemPink = Color(NSColor.systemPink)
    
    /// [NSColor] Returns a color for purple that automatically adapts to vibrancy and accessibility settings.
    /// (The Swift Essentials)
    static var systemPurple = Color(NSColor.systemPurple)
    
    /// [NSColor] Returns a color for gray that automatically adapts to vibrancy and accessibility settings.
    /// (The Swift Essentials)
    static var systemGray = Color(NSColor.systemGray)
    
    /// [NSColor] Returns a color for teal that automatically adapts to vibrancy and accessibility settings.
    /// (The Swift Essentials)
    static var systemTeal = Color(NSColor.systemTeal)
    
    /// [NSColor] Returns a color for indigo that automatically adapts to vibrancy and accessibility settings.
    /// (The Swift Essentials)
    static var systemIndigo = Color(NSColor.systemIndigo)
}

#elseif canImport(UIKit)

// MARK: - UIColor Colors
// https://developer.apple.com/documentation/uikit/uicolor

// TODO: Add all colours.

@available(iOS 13.0, *)
public extension Color {
    // Color.black
    
    /// [UIColor] A color object with a grayscale value of 1/3 and an alpha value of 1.0.
    /// (The Swift Essentials)
    static var darkGray = Color(UIColor.darkGray) // 0.333 white
    
    /// [UIColor] A color object with a grayscale value of 2/3 and an alpha value of 1.0.
    /// (The Swift Essentials)
    static var lightGray = Color(UIColor.lightGray) // 0.667 white
    
    // Color.white
    // Color.gray
    // Color.red
    // Color.green
    // Color.blue
    
    /// [UIColor] A color object with RGB values of 0.0, 1.0, and 1.0, and an alpha value of 1.0.
    /// (The Swift Essentials)
    static var cyan = Color(UIColor.cyan)
    
    
    
    /// [UIColor] A red color that automatically adapts to the current trait environment.
    /// (The Swift Essentials)
    static var systemRed = Color(UIColor.systemRed)
    
    /// [UIColor] A green color that automatically adapts to the current trait environment.
    /// (The Swift Essentials)
    static var systemGreen = Color(UIColor.systemGreen)

    /// [UIColor] A blue color that automatically adapts to the current trait environment.
    /// (The Swift Essentials)
    static var systemBlue = Color(UIColor.systemBlue)

    
    
    /// [UIColor] The color for text labels that contain primary content.
    /// (The Swift Essentials)
    static var label = Color(UIColor.label)
}

#endif
