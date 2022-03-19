import XCTest
@testable import LeetCode
@testable import Structure

final class LowestCommonAncestorofaBinaryTreeSpec: XCTestCase {

    fileprivate let questions: [(([Int?], Int, Int), Int)] = [
        (([3, 5, 1, 6, 2, 0, 8, nil, nil, 7, 4], 5, 1), 3),
        (([3, 5, 1, 6, 2, 0, 8, nil, nil, 7, 4], 5, 4), 5),
        (([1, 2], 1, 2), 1),
        (([], 1, 2), 1)
    ]

    func testLowestCommonAncestorofaBinaryTree() {
        let solution = LowestCommonAncestorofaBinaryTree()
        for ((elements, p, q), answer) in questions {
            let root = BinaryTree(elements).root
            if let result = solution.lowestCommonAncestor(root, search(p, root), search(q, root))?.val {
                XCTAssertEqual(result, answer)
            }
        }
    }

    private func search(_ value: Int, _ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }

        if root.val == value {
            return root
        } else if let result = search(value, root.left) {
            return result
        }

        return search(value, root.right)
    }
}
