import XCTest
@testable import LeetCode

final class KthSmallestinLexicographicalOrderSpec: XCTestCase {

    fileprivate let questions: [((Int, Int), Int)] = [
        ((13, 2), 10),
        ((13, 6), 2),
        ((1, 1), 1)
    ]

    func testKthSmallestinLexicographicalOrder() {
        let solution = KthSmallestinLexicographicalOrder()
        for ((n, k), answer) in questions {
            XCTAssertEqual(solution.findKthNumber(n, k), answer)
        }
    }
}
