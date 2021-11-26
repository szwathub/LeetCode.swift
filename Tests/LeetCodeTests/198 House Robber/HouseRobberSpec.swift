import XCTest
@testable import LeetCode

final class HouseRobberSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([1, 2, 3, 1]), 4),
        (([2, 7, 9, 3, 1]), 12),
        (([2, 1, 1, 2]), 4),
        (([1]), 1),
        (([]), 0)
    ]

    func testHouseRobberSpec() {
        let solution = HouseRobber()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.rob(nums), answer)
        }
    }
}
