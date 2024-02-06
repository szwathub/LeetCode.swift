import XCTest
@testable import LeetCode

final class JumpGameVISpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Int)] = [
        (
            (
                [1, -1, -2, 4, -7, 3],
                2
            ),
            7
        ),
        (
            (
                [10, -5, -2, 4, 0, 3],
                3
            ),
            17
        ),
        (
            (
                [1, -5, -20, 4, -1, 3, -6, -3],
                2
            ),
            0
        )
    ]

    func test() {
        let solution = JumpGameVI()
        for ((nums, k), answer) in questions {
            XCTAssertEqual(
                solution.maxResult(nums, k),
                answer
            )
        }
    }
}
