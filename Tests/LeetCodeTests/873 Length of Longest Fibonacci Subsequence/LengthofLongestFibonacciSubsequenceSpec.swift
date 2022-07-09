import XCTest
@testable import LeetCode

final class LengthofLongestFibonacciSubsequenceSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([1, 2, 3, 4, 5, 6, 7, 8]), 5),
        (([1, 3, 7, 11, 12, 14, 18]), 3)
    ]

    func testReplaceWords() {
        let solution = LengthofLongestFibonacciSubsequence()
        for ((arr), answer) in questions {
            XCTAssertEqual(solution.lenLongestFibSubseq(arr), answer)
        }
    }
}
