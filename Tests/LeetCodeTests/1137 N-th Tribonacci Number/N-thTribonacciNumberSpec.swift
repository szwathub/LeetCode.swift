import XCTest
@testable import LeetCode

final class NthTribonacciNumberSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((0), 0),
        ((1), 1),
        ((2), 1),
        ((3), 2),
        ((4), 4),
        ((25), 1389537)
    ]

    func testNthTribonacciNumber() {
        let solution = NthTribonacciNumber()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.tribonacci(n), answer)
        }
    }
}
