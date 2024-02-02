import XCTest
@testable import LeetCode

final class StoneGameVISpec: XCTestCase {

    fileprivate let questions: [(([Int], [Int]), Int)] = [
        (([1, 3], [2, 1]), 1),
        (([1, 2], [3, 1]), 0),
        (([2, 4, 3], [1, 6, 7]), -1)
    ]

    func testFreedomTrail() {
        let solution = StoneGameVI()
        for ((aliceValues, bobValues), answer) in questions {
            XCTAssertEqual(
                solution.stoneGameVI(aliceValues, bobValues),
                answer
            )
        }
    }
}
