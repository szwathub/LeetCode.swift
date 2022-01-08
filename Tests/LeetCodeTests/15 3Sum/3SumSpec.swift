import XCTest
@testable import LeetCode

final class ThreeSumSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [[Int]])] = [
        (([-1, 0, 1, 2, -1, -4]), [[-1, -1, 2], [-1, 0, 1]]),
        (([]), []),
        (([0]), [])
    ]

    func testThreeSum() {
        let solution = ThreeSum()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.threeSum(nums), answer)
        }
    }
}
