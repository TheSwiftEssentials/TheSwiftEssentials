//
//  ColorExtensionsTest.swift
//
// Copyright 2021 The Swift Essentials
//

import Foundation
import Swift
import SwiftUI

#if canImport(UIKit)
import UIKit
#endif

import XCTest

class ColorExtensionsTest: XCTestCase {
    
    // MARK: - Initializers
    
    func testInit() {
        if #available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *) {
            XCTAssertEqual(Color(red: 0, green: 0, blue: 0), Color(red: 0.0, green: 0.0, blue: 0.0))
            XCTAssertEqual(Color(red: 255, green: 0, blue: 0), Color(red: 1.0, green: 0.0, blue: 0.0))
            XCTAssertEqual(Color(red: 0, green: 255, blue: 0), Color(red: 0.0, green: 1.0, blue: 0.0))
            XCTAssertEqual(Color(red: 0, green: 0, blue: 255), Color(red: 0.0, green: 0.0, blue: 1.0))
            XCTAssertEqual(Color(red: 255, green: 255, blue: 255), Color(red: 1.0, green: 1.0, blue: 1.0))

            XCTAssertEqual(Color(red: 255, green: 255, blue: 255), Color(.sRGB, red: 1.0, green: 1.0, blue: 1.0))
            XCTAssertEqual(Color(.sRGB, red: 255, green: 255, blue: 255), Color(.sRGB, red: 1.0, green: 1.0, blue: 1.0))
            XCTAssertEqual(Color(.sRGBLinear, red: 255, green: 255, blue: 255), Color(Color.RGBColorSpace.sRGBLinear, red: 1.0, green: 1.0, blue: 1.0))

            XCTAssertEqual(Color(red: 255, green: 255, blue: 255, opacity: 0.5), Color(.sRGB, red: 1.0, green: 1.0, blue: 1.0, opacity: 0.5))
            
            
            XCTAssertEqual(Color(hex: 0x000000), Color(red: 0.0, green: 0.0, blue: 0.0))
            XCTAssertEqual(Color(hex: 0xFF0000), Color(red: 1.0, green: 0.0, blue: 0.0))
            XCTAssertEqual(Color(hex: 0x00FF00), Color(red: 0.0, green: 1.0, blue: 0.0))
            XCTAssertEqual(Color(hex: 0x0000FF), Color(red: 0.0, green: 0.0, blue: 1.0))
            XCTAssertEqual(Color(hex: 0xFFFFFF), Color(red: 1.0, green: 1.0, blue: 1.0))

            XCTAssertEqual(Color(hex: 0xFFFFFF), Color(.sRGB, red: 1.0, green: 1.0, blue: 1.0))
            XCTAssertEqual(Color(.sRGB, hex: 0xFFFFFF), Color(.sRGB, red: 1.0, green: 1.0, blue: 1.0))
            XCTAssertEqual(Color(.sRGBLinear, hex: 0xFFFFFF), Color(.sRGBLinear, red: 1.0, green: 1.0, blue: 1.0))

            XCTAssertEqual(Color(hex: 0xFFFFFF, opacity: 0.5), Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.5))
        }
    }

    #if os(macOS)
    
    // MARK: - NSColor Colors

    func testNSColors() {
        if #available(macOS 10.15, *) {
            XCTAssertEqual(Color.darkGray, Color(NSColor.darkGray))
            XCTAssertEqual(Color.lightGray, Color(NSColor.lightGray))
            XCTAssertEqual(Color.cyan, Color(NSColor.cyan))
            
            XCTAssertEqual(Color.systemRed, Color(NSColor.systemRed))
            XCTAssertEqual(Color.systemGreen, Color(NSColor.systemGreen))
            XCTAssertEqual(Color.systemBlue, Color(NSColor.systemBlue))
            XCTAssertEqual(Color.systemOrange, Color(NSColor.systemOrange))
            XCTAssertEqual(Color.systemYellow, Color(NSColor.systemYellow))
            XCTAssertEqual(Color.systemBrown, Color(NSColor.systemBrown))
            XCTAssertEqual(Color.systemPink, Color(NSColor.systemPink))
            XCTAssertEqual(Color.systemPurple, Color(NSColor.systemPurple))
            XCTAssertEqual(Color.systemGray, Color(NSColor.systemGray))
            XCTAssertEqual(Color.systemTeal, Color(NSColor.systemTeal))
            XCTAssertEqual(Color.systemIndigo, Color(NSColor.systemIndigo))
        }
    }
    
    #elseif canImport(UIKit)

    // MARK: - UIColor Colors

    func testUIColorsSystemColors() {
        if #available(iOS 13.0, *) {
            XCTAssertEqual(Color.systemRed, Color(UIColor.systemRed))
            XCTAssertEqual(Color.systemGreen, Color(UIColor.systemGreen))
            XCTAssertEqual(Color.systemBlue, Color(UIColor.systemBlue))

            XCTAssertEqual(Color.label, Color(UIColor.label))
        }
    }
    
    #endif
}
