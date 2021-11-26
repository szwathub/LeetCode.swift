import XCTest
@testable import LeetCode

final class IntersectionofTwoArraysIISpec: XCTestCase {

    fileprivate let questions: [(([Int], [Int]), [Int])] = [
        (([1, 2, 2, 1], [2, 2]), [2, 2]),
        (([4, 9, 5], [9, 4, 9, 8, 4]), [4, 9]),
        (([1], [1]), [1])
    ]

    func testIntersectionofTwoArraysII() {
        let solution = IntersectionofTwoArraysII()
        for ((nums1, nums2), answer) in questions {
            XCTAssertEqual(solution.intersect(nums1, nums2).sorted(), answer)
        }
    }
}
