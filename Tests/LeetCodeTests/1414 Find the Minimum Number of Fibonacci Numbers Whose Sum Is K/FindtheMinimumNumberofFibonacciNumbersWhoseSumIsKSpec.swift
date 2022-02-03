import XCTest
@testable import LeetCode

final class FindtheMinimumNumberofFibonacciNumbersWhoseSumIsKSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((7), 2),
        ((10), 2),
        ((19), 3)
    ]

    func testFindtheMinimumNumberofFibonacciNumbersWhoseSumIsK() {
        let solution = FindtheMinimumNumberofFibonacciNumbersWhoseSumIsK()
        for ((k), answer) in questions {
            XCTAssertEqual(solution.findMinFibonacciNumbers(k), answer)
        }
    }
}
