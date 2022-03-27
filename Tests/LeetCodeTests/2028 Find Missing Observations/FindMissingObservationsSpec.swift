import XCTest
@testable import LeetCode

final class FindMissingObservationsSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int, Int), [Int])] = [
        (([3, 2, 4, 3], 4, 2), [6, 6]),
        (([1, 5, 6], 3, 4), [3, 2, 2, 2]),
        (([1, 2, 3, 4], 6, 4), [])
    ]

    func testFindMissingObservations() {
        let solution = FindMissingObservations()
        for ((rolls, mean, n), answer) in questions {
            XCTAssertEqual(solution.missingRolls(rolls, mean, n), answer)
        }
    }
}
