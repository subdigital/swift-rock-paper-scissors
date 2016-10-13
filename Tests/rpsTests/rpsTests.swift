import XCTest
@testable import rps

class rpsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(rps().text, "Hello, World!")
    }


    static var allTests : [(String, (rpsTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
