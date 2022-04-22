import XCTest
@testable import LeetCode

final class RotateFunctionSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([4, 3, 2, 6]), 26),
        (([100]), 0)
    ]

    func testRotateFunction() {
        let solution = RotateFunction()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.maxRotateFunction(nums), answer)
        }
    }
}
