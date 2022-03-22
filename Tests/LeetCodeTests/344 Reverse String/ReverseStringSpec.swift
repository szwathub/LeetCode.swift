import XCTest
@testable import LeetCode

final class ReverseStringSpec: XCTestCase {

    fileprivate let questions: [(([Character]), [Character])] = [
        ((["h", "e", "l", "l", "o"]), ["o", "l", "l", "e", "h"]),
        ((["H", "a", "n", "n", "a", "h"]), ["h", "a", "n", "n", "a", "H"])
    ]

    func testReverseString() {
        let solution = ReverseString()
        for ((s), answer) in questions {
            var characters = s
            solution.reverseString(&characters)
            XCTAssertEqual(characters, answer)
        }
    }
}
