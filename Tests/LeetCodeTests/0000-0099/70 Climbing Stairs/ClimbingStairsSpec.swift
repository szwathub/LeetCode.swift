import XCTest
@testable import LeetCode

final class ClimbingStairsSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((2), 2),
        ((3), 3)
    ]

    func test() {
        let solution = ClimbingStairs()
        for ((n), answer) in questions {
            XCTAssertEqual(
                solution.climbStairs(n),
                answer
            )
        }
    }
}
