import XCTest
@testable import LeetCode

final class FibonacciNumberSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((1), 1),
        ((2), 1),
        ((3), 2),
        ((4), 3)
    ]

    func testFibonacciNumber() {
        let solution = FibonacciNumber()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.fib(n), answer)
        }
    }
}
