import XCTest
@testable import LeetCode

final class CoinChangeSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Int)] = [
        (([1, 2, 5], 11), 3),
        (([2], 3), -1),
        (([1], 0), 0),
        (([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24], 9999), -1)
    ]

    func testCoinChange() {
        let solution = CoinChange()
        for ((coins, amount), answer) in questions {
            XCTAssertEqual(solution.coinChange(coins, amount), answer)
        }
    }
}
