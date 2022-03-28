import XCTest
@testable import LeetCode

final class BinaryNumberwithAlternatingBitsSpec: XCTestCase {

    fileprivate let questions: [((Int), Bool)] = [
        ((5), true),
        ((7), false),
        ((11), false)
    ]

    func testBinaryNumberwithAlternatingBits() {
        let solution = BinaryNumberwithAlternatingBits()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.hasAlternatingBits(n), answer)
        }
    }
}
