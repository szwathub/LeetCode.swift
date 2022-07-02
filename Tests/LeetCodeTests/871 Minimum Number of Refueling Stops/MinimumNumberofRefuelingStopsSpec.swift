import XCTest
@testable import LeetCode

final class MinimumNumberofRefuelingStopsSpec: XCTestCase {

    fileprivate let questions: [((Int, Int, [[Int]]), Int)] = [
        ((1, 1, []), 0),
        ((100, 1, [[10,100]]), -1),
        ((100, 10, [[10, 60], [20, 30], [30, 30], [60, 40]]), 2)
    ]

    func testMinimumNumberofRefuelingStops() {
        let solution = MinimumNumberofRefuelingStops()
        for ((target, startFuel, stations), answer) in questions {
            XCTAssertEqual(solution.minRefuelStops(target, startFuel, stations), answer)
        }
    }
}
