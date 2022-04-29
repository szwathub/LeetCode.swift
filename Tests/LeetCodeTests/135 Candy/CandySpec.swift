import XCTest
@testable import LeetCode

final class CandySpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([1, 0, 2]), 5),
        (([1, 2, 2]), 4)
    ]

    func testCandy() {
        let solution = Candy()
        for ((ratings), answer) in questions {
            XCTAssertEqual(solution.candy(ratings), answer)
        }
    }
}
