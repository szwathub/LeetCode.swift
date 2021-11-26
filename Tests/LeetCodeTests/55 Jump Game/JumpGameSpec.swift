import XCTest
@testable import LeetCode

final class JumpGameSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Bool)] = [
        (([2, 3, 1, 1, 4]), true),
        (([3, 2, 1, 0, 4]), false)
    ]

    func testJumpGame() {
        let solution = JumpGame()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.canJump(nums), answer)
        }
    }
}
