import XCTest
@testable import LeetCode

final class FindtheDistinctDifferenceArraySpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([1, 2, 3, 4, 5]), [-3, -1, 1, 3, 5]),
        (([3, 2, 3, 4, 2]), [-2, -1, 0, 2, 3])
    ]

    func test() {
        let solution = FindtheDistinctDifferenceArray()
        for ((nums), answer) in questions {
            XCTAssertEqual(
                solution.distinctDifferenceArray(nums),
                answer
            )
        }
    }
}
