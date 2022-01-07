import XCTest
@testable import LeetCode
@testable import Structure

final class LowestCommonAncestorofaBinarySearchTreeSpec: XCTestCase {

    fileprivate let questions: [(([Int?], Int, Int), Int)] = [
        (([6, 2, 8, 0, 4, 7, 9, nil, nil, 3, 5], 2, 8), 6),
        (([6, 2, 8, 0, 4, 7, 9, nil, nil, 3, 5], 2, 4), 2),
        (([2, 1], 2, 1), 2)
    ]

    func testLowestCommonAncestorofaBinarySearchTree() {
        let solution = LowestCommonAncestorofaBinarySearchTree()
        for ((elements, p, q), answer) in questions {
            let tree = BinaryTree(elements)
            let p = TreeNode(value: p)
            let q = TreeNode(value: q)
            if let find = solution.lowestCommonAncestor(tree.root, p, q) {
                XCTAssertEqual(find.value, answer)
            }
        }
    }
}
