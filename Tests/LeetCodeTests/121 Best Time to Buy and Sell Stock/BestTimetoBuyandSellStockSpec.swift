import XCTest
@testable import LeetCode

final class BestTimetoBuyandSellStockSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var prices: [Int]
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(prices: [7, 1, 5, 3, 6, 4]), answer: 5),
            .init(parameter: .init(prices: [7, 6, 4, 3, 1]), answer: 0)
        ]
    }

    func testBestTimetoBuyandSellStock() {
        let solution = BestTimetoBuyandSellStock()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.maxProfit(parameter.prices), answer)
        }
    }
}
