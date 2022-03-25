import XCTest
@testable import LeetCode

final class FactorialTrailingZeroesSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((3), 0),
        ((5), 1),
        ((0), 0)
    ]

    func testFactorialTrailingZeroes() {
        let solution = FactorialTrailingZeroes()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.trailingZeroes(n), answer)
        }
    }
}
