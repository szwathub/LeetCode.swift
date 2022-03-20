import XCTest
@testable import LeetCode

final class SquaresofaSortedArraySpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([-4, -1, 0, 3, 10]), [0, 1, 9, 16, 100]),
        (([-7, -3, 2, 3, 11]), [4, 9, 9, 49, 121])
    ]

    func testSquaresofaSortedArray() {
        let solution = SquaresofaSortedArray()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.sortedSquares(nums), answer)
        }
    }
}
