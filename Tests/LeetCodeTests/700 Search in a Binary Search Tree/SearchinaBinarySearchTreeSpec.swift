import XCTest
@testable import LeetCode
@testable import Structure

final class SearchinaBinarySearchTreeSpec: XCTestCase {

    fileprivate let questions: [(([Int?], Int), [Int?])] = [
        (([4, 2, 7, 1, 3], 2), [2, 1, 3]),
        (([4, 2, 7, 1, 3], 5), [])
    ]

    func testSearchinaBinarySearchTree() {
        let solution = SearchinaBinarySearchTree()
        for ((elements, val), answer) in questions {
            let tree = BinaryTree(elements)
            let search = solution.searchBST(tree.root, val)

            XCTAssertTrue(search == BinaryTree(answer).root)
        }
    }
}
