import XCTest
@testable import LeetCode

final class LargestNumberAtLeastTwiceofOthersSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([3, 6, 1, 0]), 1),
        (([1, 6, 3, 0]), 1),
        (([1, 2, 3, 4]), -1),
        (([1]), 0)
    ]

    func testLargestNumberAtLeastTwiceofOthers() {
        let solution = LargestNumberAtLeastTwiceofOthers()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.dominantIndex(nums), answer)
        }
    }
}
