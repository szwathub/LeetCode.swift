import XCTest
@testable import LeetCode

final class HandofStraightsSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Bool)] = [
        (([1, 2, 3, 6, 2, 3, 4, 7, 8], 3), true),
        (([1, 2, 3, 4, 5], 4), false),
        (([8, 10, 12], 3), false)
    ]

    func testHandofStraights() {
        let solution = HandofStraights()
        for ((hand, groupSize), answer) in questions {
            XCTAssertEqual(solution.isNStraightHand(hand, groupSize), answer)
        }
    }
}
