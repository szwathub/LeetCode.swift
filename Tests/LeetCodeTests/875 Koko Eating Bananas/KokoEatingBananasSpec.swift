import XCTest
@testable import LeetCode

final class KokoEatingBananasSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Int)] = [
        (([3, 6, 7, 11], 8), 4),
        (([30, 11, 23, 4, 20], 5), 30),
        (([30, 11, 23, 4, 20], 6), 23)
    ]

    func testKokoEatingBananas() {
        let solution = KokoEatingBananas()
        for ((piles, h), answer) in questions {
            XCTAssertEqual(solution.minEatingSpeed(piles, h), answer)
        }
    }
}
