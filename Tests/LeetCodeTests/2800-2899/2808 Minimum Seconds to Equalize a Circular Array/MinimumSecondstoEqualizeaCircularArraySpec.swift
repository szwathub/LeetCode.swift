import XCTest
@testable import LeetCode

final class MinimumSecondstoEqualizeaCircularArraySpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([1, 2, 1, 2]), 1),
        (([2, 1, 3, 3, 2]), 2),
        (([5, 5, 5, 5]), 0)
    ]

    func test() {
        let solution = MinimumSecondstoEqualizeaCircularArray()
        for ((nums), answer) in questions {
            XCTAssertEqual(
                solution.minimumSeconds(nums),
                answer
            )
        }
    }
}
