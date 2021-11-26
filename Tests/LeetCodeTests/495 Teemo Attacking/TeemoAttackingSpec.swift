import XCTest
@testable import LeetCode

final class TeemoAttackingSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Int)] = [
        (([1, 4], 2), 4),
        (([1, 2], 2), 3),
        (([1, 2, 3, 4, 5], 5), 9)
    ]

    func testTeemoAttacking() {
        let solution = TeemoAttacking()
        for ((timeSeries, duration), answer) in questions {
            XCTAssertEqual(solution.findPoisonedDuration(timeSeries, duration), answer)
        }
    }
}
