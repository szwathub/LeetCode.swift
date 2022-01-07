import XCTest
@testable import LeetCode
@testable import Structure

final class PathSumSpec: XCTestCase {

    fileprivate let questions: [(([Int?], Int), Bool)] = [
        (([5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, nil, 1], 22), true),
        (([1, 2, 3], 5), false),
        (([], 0), false)
    ]

    func testPathSum() {
        let solution = PathSum()
        for ((elements, targetSum), answer) in questions {
            let tree = BinaryTree(elements)
            XCTAssertEqual(solution.hasPathSum(tree.root, targetSum), answer)
        }
    }
}
