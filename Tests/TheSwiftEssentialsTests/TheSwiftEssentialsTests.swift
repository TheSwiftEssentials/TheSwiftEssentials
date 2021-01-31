import XCTest
@testable import TheSwiftEssentials

final class TheSwiftEssentialsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(TheSwiftEssentials().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
