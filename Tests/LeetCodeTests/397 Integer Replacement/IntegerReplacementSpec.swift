import XCTest
@testable import LeetCode

final class IntegerReplacementSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((8), 3),
        ((7), 4),
        ((4), 2)
    ]

    func testIntegerReplacement() {
        let solution = IntegerReplacement()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.integerReplacement(n), answer)
        }
    }
}
