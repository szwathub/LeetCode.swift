import XCTest
@testable import LeetCode

final class ContainVirusSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), Int)] = [
        (
            (
                [
                    [0, 1, 0, 0, 0, 0, 0, 1],
                    [0, 1, 0, 0, 0, 0, 0, 1],
                    [0, 0, 0, 0, 0, 0, 0, 1],
                    [0, 0, 0, 0, 0, 0, 0, 0]
                ]
            ),
            10
        ),
        (
            (
                [
                    [1, 1, 1],
                    [1, 0, 1],
                    [1, 1, 1]
                ]
            ),
            4
        ),
        (
            (
                [
                    [1, 1, 1, 0, 0, 0, 0, 0, 0],
                    [1, 0, 1, 0, 1, 1, 1, 1, 1],
                    [1, 1, 1, 0, 0, 0, 0, 0, 0]
                ]
            ),
            13
        ),
        (
            (
                [
                    [0, 1, 0, 0, 0, 0, 0, 1],
                    [0, 1, 0, 1, 0, 0, 0, 1],
                    [0, 0, 0, 0, 0, 0, 0, 1]
                ]
            ),
            16
        )
    ]

    func testContainVirus() {
        let solution = ContainVirus()
        for ((isInfected), answer) in questions {
            XCTAssertEqual(solution.containVirus(isInfected), answer)
        }
    }
}
