import XCTest
@testable import LeetCode

final class WaterBottlesSpec: XCTestCase {

    fileprivate let questions: [((Int, Int), Int)] = [
        ((9, 3), 13),
        ((15, 4), 19),
        ((5, 5), 6),
        ((2, 3), 2)
    ]

    func testWaterBottles() {
        let solution = WaterBottles()
        for ((numBottles, numExchange), answer) in questions {
            XCTAssertEqual(solution.numWaterBottles(numBottles, numExchange), answer)
        }
    }
}
