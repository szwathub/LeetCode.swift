import XCTest
@testable import LeetCode
@testable import Structure

final class AllElementsinTwoBinarySearchTreesSpec: XCTestCase {

    fileprivate let questions: [(([Int?], [Int?]), [Int])] = [
        (([2, 1, 4], [1, 0, 3]), [0, 1, 1, 2, 3, 4]),
        (([1, nil, 8], [8, 1]), [1, 1, 8, 8]),
        (([], [5, 1, 7, 0, 2]), [0, 1, 2, 5, 7])
    ]

    func testAllElementsinTwoBinarySearchTrees() {
        let solution = AllElementsinTwoBinarySearchTrees()
        for ((root1, root2), answer) in questions {
            XCTAssertEqual(solution.getAllElements(BinaryTree(root1).root, BinaryTree(root2).root), answer)
        }
    }
}
