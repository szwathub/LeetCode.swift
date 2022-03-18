import XCTest
@testable import LeetCode

final class TopKFrequentElementsSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), [Int])] = [
        (([1, 1, 1, 2, 2, 3], 2), [1, 2]),
        (([1], 1), [1])
    ]

    func testTopKFrequentElements() {
        let solution = TopKFrequentElements()
        for ((nums, k), answer) in questions {
            XCTAssertEqual(solution.topKFrequent(nums, k), answer)
        }
    }
}
