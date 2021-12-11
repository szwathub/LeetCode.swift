import XCTest
@testable import LeetCode

final class OnlineElectionSpec: XCTestCase {

    fileprivate let questions: [(([Int], [Int], [Int]), [Int])] = [
        (([0, 1, 1, 0, 0, 1, 0], [0, 5, 10, 15, 20, 25, 30], [3, 12, 25, 15, 24, 8]), [0, 1, 1, 0, 0, 1])
    ]

    func testTwoSum() {
        for ((persons, time, querys), answers) in questions {
            let solution = TopVotedCandidate(persons, time)
            for (query, answer) in zip(querys, answers) {
                XCTAssertEqual(solution.q(query), answer)
            }
        }
    }
}
