//  StringExtensionsTests.swift

import XCTest
@testable import TheSwiftEssentials

final class StringExtensionsTests: XCTestCase {
    func testInt() {
        XCTAssertEqual("10".int, 10)
    }
}
