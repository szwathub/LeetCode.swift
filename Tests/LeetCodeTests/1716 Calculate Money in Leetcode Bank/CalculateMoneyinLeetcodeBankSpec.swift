import XCTest
@testable import LeetCode

final class CalculateMoneyinLeetcodeBankSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((4), 10),
        ((10), 37),
        ((20), 96)
    ]

    func testCalculateMoneyinLeetcodeBank() {
        let solution = CalculateMoneyinLeetcodeBank()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.totalMoney(n), answer)
        }
    }
}
