import XCTest
@testable import LeetCode

final class FindKPairswithSmallestSumsSpec: XCTestCase {

    fileprivate let questions: [(([Int], [Int], Int), [[Int]])] = [
        (([1, 7, 11], [2, 4, 6], 3), [[1, 2], [1, 4], [1, 6]]),
        (([1, 1, 2], [1, 1, 2], 2), [[1, 1], [1, 1]]),
        (([1, 2], [3], 3), [[1, 3], [2, 3]])
    ]

    func testFindKPairswithSmallestSums() {
        let solution = FindKPairswithSmallestSums()
        for ((nums1, nums2, k), answer) in questions {
            XCTAssertEqual(solution.kSmallestPairs(nums1, nums2, k), answer)
        }
    }
}
