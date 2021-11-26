import XCTest
@testable import LeetCode

final class TrappingRainWaterSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]), 6),
        (([4, 2, 0, 3, 2, 5]), 9),
        (([0, 1, 5, 3, 4, 4, 0]), 1)
    ]

    func testTrappingRainWater() {
        let solution = TrappingRainWater()
        for ((height), answer) in questions {
            XCTAssertEqual(solution.trap(height), answer)
        }
    }
}
