import XCTest
@testable import LeetCode

final class CountNodesWiththeHighestScoreSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([-1, 2, 0, 2, 0]), 3),
        (([-1, 2, 0]), 2)
    ]

    func testCountNodesWiththeHighestScore() {
        let solution = CountNodesWiththeHighestScore()
        for ((parents), answer) in questions {
            XCTAssertEqual(solution.countHighestScoreNodes(parents), answer)
        }
    }
}
