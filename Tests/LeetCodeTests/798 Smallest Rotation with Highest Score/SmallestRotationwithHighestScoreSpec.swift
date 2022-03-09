import XCTest
@testable import LeetCode

final class SmallestRotationwithHighestScoreSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([2, 3, 1, 4, 0]), 3),
        (([1, 3, 0, 2, 4]), 0)
    ]

    func testSmallestRotationwithHighestScore() {
        let solution = SmallestRotationwithHighestScore()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.bestRotation(nums), answer)
        }
    }
}
