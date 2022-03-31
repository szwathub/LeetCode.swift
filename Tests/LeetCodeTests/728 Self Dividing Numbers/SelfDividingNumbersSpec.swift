import XCTest
@testable import LeetCode

final class SelfDividingNumbersSpec: XCTestCase {

    fileprivate let questions: [((Int, Int), [Int])] = [
        ((1, 22), [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]),
        ((47, 85), [48, 55, 66, 77])
    ]

    func testSelfDividingNumbers() {
        let solution = SelfDividingNumbers()
        for ((left, right), answer) in questions {
            XCTAssertEqual(solution.selfDividingNumbers(left, right), answer)
        }
    }
}
