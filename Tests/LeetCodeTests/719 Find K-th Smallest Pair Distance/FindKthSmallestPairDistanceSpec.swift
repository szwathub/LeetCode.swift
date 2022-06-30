import XCTest
@testable import LeetCode

final class FindKthSmallestPairDistanceSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Int)] = [
        (([1, 3, 1], 1), 0),
        (([1, 1, 1], 2), 0),
        (([1, 6, 1], 3), 5)
    ]

    func testFindKthSmallestPairDistance() {
        let solution = FindKthSmallestPairDistance()
        for ((nums, k), answer) in questions {
            XCTAssertEqual(solution.smallestDistancePair(nums, k), answer)
        }
    }
}
