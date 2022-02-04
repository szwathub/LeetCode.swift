import XCTest
@testable import LeetCode

final class NumberOfRectanglesThatCanFormTheLargestSquareSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), Int)] = [
        (([[5, 8], [3, 9], [5, 12], [16, 5]]), 3),
        (([[2, 3], [3, 7], [4, 3], [3, 7]]), 3)
    ]

    func testNumberOfRectanglesThatCanFormTheLargestSquare() {
        let solution = NumberOfRectanglesThatCanFormTheLargestSquare()
        for ((rectangles), answer) in questions {
            XCTAssertEqual(solution.countGoodRectangles(rectangles), answer)
        }
    }
}
