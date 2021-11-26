import XCTest
@testable import LeetCode

final class ContainerWithMostWaterSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([1, 8, 6, 2, 5, 4, 8, 3, 7]), 49),
        (([1, 1]), 1),
        (([4, 3, 2, 1, 4]), 16),
        (([1, 2, 1]), 2)
    ]

    func testContainerWithMostWater() {
        let solution = ContainerWithMostWater()
        for ((height), answer) in questions {
            XCTAssertEqual(solution.maxArea(height), answer)
        }
    }
}
