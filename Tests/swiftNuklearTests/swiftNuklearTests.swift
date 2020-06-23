import XCTest
@testable import swiftNuklear

final class swiftNuklearTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(swiftNuklear().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
