import XCTest
@testable import LeetCode
@testable import Structure

final class PathSumIISpec: XCTestCase {

    fileprivate let questions: [(([Int?], Int), [[Int]])] = [
//        (([5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, 5, 1], 22), [[5, 4, 11, 2], [5, 8, 4, 5]]),
//        (([1, 2, 3], 5), []),
//        (([1, 2], 0), []),
        (([-2, nil, -3], -5), [[-2, -3]])
    ]

    func testPathSumII() {
        let solution = PathSumII()
        for ((elements, targetSum), answer) in questions {
            XCTAssertEqual(solution.pathSum(BinaryTree(elements).root, targetSum), answer)
        }
    }
}
