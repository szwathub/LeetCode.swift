import XCTest
@testable import LeetCode

final class CountNumberswithUniqueDigitsSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((2), 91),
        ((0), 1)
    ]

    func testCountNumberswithUniqueDigits() {
        let solution = CountNumberswithUniqueDigits()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.countNumbersWithUniqueDigits(n), answer)
        }
    }
}
