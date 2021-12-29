import XCTest
@testable import LeetCode

final class CountSpecialQuadrupletsSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([1, 2, 3, 6]), 1),
        (([3, 3, 6, 4, 5]), 0),
        (([1, 1, 1, 3, 5]), 4)
    ]

    func testCountSpecialQuadruplets() {
        let solution = CountSpecialQuadruplets()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.countQuadruplets(nums), answer)
        }
    }
}
