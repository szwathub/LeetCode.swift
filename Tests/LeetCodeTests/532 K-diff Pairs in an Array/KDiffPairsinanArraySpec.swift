import XCTest
@testable import LeetCode

final class KDiffPairsinanArraySpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Int)] = [
        (([3, 1, 4, 1, 5], 2), 2),
        (([1, 2, 3, 4, 5], 1), 4),
        (([1, 3, 1, 5, 4], 0), 1)
    ]

    func testKDiffPairsinanArray() {
        let solution = KDiffPairsinanArray()
        for ((nums, k), answer) in questions {
            XCTAssertEqual(solution.findPairs(nums, k), answer)
        }
    }
}
