import XCTest
@testable import LeetCode
@testable import Structure

final class InsertintoaBinarySearchTreeSpec: XCTestCase {

    fileprivate let questions: [(([Int?], Int), [Int?])] = [
        (([4, 2, 7, 1, 3], 5), [4, 2, 7, 1, 3, 5]),
        (([40, 20, 60, 10, 30, 50, 70], 25), [40, 20, 60, 10, 30, 50, 70, nil, nil, 25]),
        (([4, 2, 7, 1, 3, nil, nil, nil, nil, nil, nil], 5), [4, 2, 7, 1, 3, 5]),
        (([61, 46, 66, 43, nil, nil, nil, 39, nil, nil, nil], 88), [61, 46, 66, 43, nil, nil, 88, 39]),
        (([], 5), [5])
    ]

    func testInsertintoaBinarySearchTree() {
        let solution = InsertintoaBinarySearchTree()
        for ((elements, val), answer) in questions {
            let tree = BinaryTree(elements)
            let inserted = solution.insertIntoBST(tree.root, val)
            XCTAssertTrue(inserted == BinaryTree(answer).root)
        }
    }
}
