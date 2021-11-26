import XCTest
@testable import LeetCode

final class BestTimetoBuyandSellStockSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([7, 1, 5, 3, 6, 4]), 5),
        (([7, 6, 4, 3, 1]), 0)
    ]

    func testBestTimetoBuyandSellStock() {
        let solution = BestTimetoBuyandSellStock()
        for ((prices), answer) in questions {
            XCTAssertEqual(solution.maxProfit(prices), answer)
        }
    }
}
