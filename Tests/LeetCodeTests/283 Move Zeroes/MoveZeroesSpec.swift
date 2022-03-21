import XCTest
@testable import LeetCode

final class MoveZeroesSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([0, 1, 0, 3, 12]), [1, 3, 12, 0, 0]),
        (([0]), [0])
    ]

    func testMoveZeroes() {
        let solution = MoveZeroes()
        for ((nums), answer) in questions {
            var numbers = nums
            solution.moveZeroes(&numbers)
            XCTAssertEqual(numbers, answer)
        }
    }
}
