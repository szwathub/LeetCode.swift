import XCTest
@testable import LeetCode
@testable import Structure

final class DeleteNodeinaBSTSpec: XCTestCase {

    fileprivate let questions: [(([Int?], Int), [Int?])] = [
        (([5, 3, 6, 2, 4, nil, 7], 3), [5, 4, 6, 2, nil, nil, 7]),
        (([5, 3, 6, 2, 4, nil, 7], 0), [5, 3, 6, 2, 4, nil, 7]),
        (([], 0), []),
        (([5, 3, 6, 2, 4, nil, 7], 7), [5, 3, 6, 2, 4]),
        (([2, 1], 2), [1]),
        (([50, 30, 70, nil, 40, 60, 80], 50), [60, 30, 70, nil, 40, nil, 80]),
        (([50, 30, nil, 20, 40], 50), [40, 30, nil, 20])
    ]

    func testDeleteNodeinaBST() {
        let solution = DeleteNodeinaBST()
        for ((elements, key), answer) in questions {
            let node = solution.deleteNode(BinaryTree(elements).root, key)
            XCTAssertTrue(node == BinaryTree(answer).root)
        }
    }
}
