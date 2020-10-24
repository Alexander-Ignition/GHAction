import XCTest
@testable import GHAction

#warning("Something went wrong")

final class GHActionTests: XCTestCase {
    func testExample() {
        XCTAssertEqual(GHAction().text, "Hello, World")
    }
}
