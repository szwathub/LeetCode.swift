import XCTest
@testable import LeetCode
@testable import Structure

class VerticalOrderTraversalofaBinaryTreeSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), [[Int]])] = [
        (([3, 9, 20, nil, nil, 15, 7]), [[9], [3, 15], [20], [7]]),
        (([1, 2, 3, 4, 5, 6, 7]), [[4], [2], [1, 5, 6], [3], [7]]),
        (([1, 2, 3, 4, 6, 5, 7]), [[4], [2], [1, 5, 6], [3], [7]])
    ]

    func test() {
        let solution = VerticalOrderTraversalofaBinaryTree()
        for ((elements), answer) in questions {
            let root = BinaryTree(elements)
            XCTAssertEqual(solution.verticalTraversal(root), answer)
        }
    }
}
