import XCTest
@testable import LeetCode

final class MinimumAbsoluteDifferenceSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [[Int]])] = [
        (([4, 2, 1, 3]), [[1, 2], [2, 3], [3, 4]]),
        (([1, 3, 6, 10, 15]), [[1, 3]]),
        (([3, 8, -10, 23, 19, -4, -14, 27]), [[-14, -10], [19, 23], [23, 27]])
    ]

    func testMinimumAbsoluteDifference() {
        let solution = MinimumAbsoluteDifference()
        for ((arr), answer) in questions {
            XCTAssertEqual(solution.minimumAbsDifference(arr), answer)
        }
    }
}
