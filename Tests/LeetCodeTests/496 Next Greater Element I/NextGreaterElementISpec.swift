import XCTest
@testable import LeetCode

final class NextGreaterElementISpec: XCTestCase {

    fileprivate let questions: [(([Int], [Int]), [Int])] = [
        (([4, 1, 2], [1, 3, 4, 2]), [-1, 3, -1]),
        (([2, 4], [1, 2, 3, 4]), [3, -1])
    ]

    func testNextGreaterElementI() {
        let solution = NextGreaterElementI()
        for ((nums1, nums2), answer) in questions {
            XCTAssertEqual(solution.nextGreaterElement(nums1, nums2), answer)
            XCTAssertEqual(solution.nextGreaterElementII(nums1, nums2), answer)
        }
    }
}
