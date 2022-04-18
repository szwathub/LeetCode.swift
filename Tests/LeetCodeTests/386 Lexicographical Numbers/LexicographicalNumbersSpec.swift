//
import XCTest
@testable import LeetCode

final class LexicographicalNumbersSpec: XCTestCase {

    fileprivate let questions: [((Int), [Int])] = [
        ((13), [1,10,11,12,13,2,3,4,5,6,7,8,9]),
        ((2), [1, 2])
    ]

    func testLexicographicalNumbers() {
        let solution = LexicographicalNumbers()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.lexicalOrder(n), answer)
        }
    }
}
