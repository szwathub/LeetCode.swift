import XCTest
@testable import LeetCode

final class JumpGameIVSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([100, -23, -23, 404, 100, 23, 23, 23, 3, 404]), 3),
        (([7]), 0),
        (([7, 6, 9, 6, 9, 6, 9, 7]), 1),
        (([6, 1, 9]), 2),
        (([11, 22, 7, 7, 7, 7, 7, 7, 7, 22, 13]), 3)
    ]

    func testJumpGameIV() {
        let solution = JumpGameIV()
        for ((arr), answer) in questions {
            XCTAssertEqual(solution.minJumps(arr), answer)
        }
    }
}
