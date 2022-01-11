import XCTest
@testable import LeetCode

final class IncreasingTripletSubsequenceSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Bool)] = [
        (([1, 2, 3, 4, 5]), true),
        (([5, 4, 3, 2, 1]), false),
        (([2, 1, 5, 0, 4, 6]), true),
        (([2, 1]), false)
    ]

    func testIncreasingTripletSubsequence() {
        let solution = IncreasingTripletSubsequence()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.increasingTriplet(nums), answer)
        }
    }
}
