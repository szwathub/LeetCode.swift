import XCTest
@testable import LeetCode

final class UTF8ValidationSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Bool)] = [
        (([197, 130, 1]), true),
        (([235, 140, 4]), false),
        (([255]), false)
    ]

    func testUTF8Validation() {
        let solution = UTF8Validation()
        for ((data), answer) in questions {
            XCTAssertEqual(solution.validUtf8(data), answer)
        }
    }
}
