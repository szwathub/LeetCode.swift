import XCTest
@testable import LeetCode

final class MergeSortedArraySpec: XCTestCase {

    fileprivate let questions: [(([Int], Int, [Int], Int), [Int])] = [
        (([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3), [1, 2, 2, 3, 5, 6]),
        (([1], 1, [], 0), [1]),
        (([0], 0, [1], 1), [1]),
        (([4, 0, 0, 0, 0, 0], 1, [1, 2, 3, 5, 6], 5), [1, 2, 3, 4, 5, 6]),
        (([1, 2, 4, 5, 6, 0], 5, [3], 1), [1, 2, 3, 4, 5, 6]),
        (([4, 5, 6, 0, 0, 0], 3, [1, 2, 3], 3), [1, 2, 3, 4, 5, 6])
    ]

    func testMergeSortedArray() {
        let solution = MergeSortedArray()
        for ((var nums1, m, nums2, n), answer) in questions {
            solution.merge(&nums1, m, nums2, n)
            XCTAssertEqual(nums1, answer)
        }
    }
}
