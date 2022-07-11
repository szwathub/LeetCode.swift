import XCTest
@testable import LeetCode

final class CherryPickupSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), Int)] = [
        (
            (
                [
                    [0, 1, -1],
                    [1, 0, -1],
                    [1, 1, 1]
                ]
            ),
            5
        ),
        (
            (
                [
                    [1, 1, -1],
                    [1, -1, 1],
                    [ -1, 1, 1]
                ]
            ),
            0
        ),
        (
            (
                [
                    [1, 1, 1, 1, 1],
                    [1, 1, -1, 1, 1],
                    [-1, -1, 1, 1, 1],
                    [1, 1, 1, 1, 1],
                    [-1, 1, 1, 1, 1]
                ]
            ),
            13
        )
    ]

    func testCherryPickup() {
        let solution = CherryPickup()
        for ((grid), answer) in questions {
            XCTAssertEqual(solution.cherryPickup(grid), answer)
        }
    }
}
