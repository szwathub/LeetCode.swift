import XCTest
@testable import LeetCode

final class RotateArraySpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), [Int])] = [
        (([1, 2, 3, 4, 5, 6, 7], 3), [5, 6, 7, 1, 2, 3, 4]),
        (([-1, -100, 3, 99], 2), [3, 99, -1, -100])
    ]

    func testRotateArray() {
        let solution = RotateArray()
        for ((nums, k), answer) in questions {
            var numbers = nums
            solution.rotate(&numbers, k)
            XCTAssertEqual(numbers, answer)
        }
    }
}
