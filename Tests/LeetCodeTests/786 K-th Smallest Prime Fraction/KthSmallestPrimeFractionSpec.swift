import XCTest
@testable import LeetCode

final class KthSmallestPrimeFractionSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), [Int])] = [
        (([1, 2, 3, 5], 3), [2, 5]),
        (([1, 7], 1), [1, 7])
    ]

    func testKthSmallestPrimeFraction() {
        let solution = KthSmallestPrimeFraction()
        for ((arr, k), answer) in questions {
            XCTAssertEqual(solution.kthSmallestPrimeFraction(arr, k), answer)
        }
    }
}
