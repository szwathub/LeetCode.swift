import XCTest
@testable import LeetCode

final class RankTransformofanArraySpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([40, 10, 20, 30]), [4, 1, 2, 3]),
        (([100, 100, 100]), [1, 1, 1]),
        (([37, 12, 28, 9, 100, 56, 80, 5, 12]), [5, 3, 4, 2, 8, 6, 7, 1, 3])
    ]

    func testRankTransformofanArray() {
        let solution = RankTransformofanArray()
        for ((arr), answer) in questions {
            XCTAssertEqual(solution.arrayRankTransform(arr), answer)
        }
    }
}
