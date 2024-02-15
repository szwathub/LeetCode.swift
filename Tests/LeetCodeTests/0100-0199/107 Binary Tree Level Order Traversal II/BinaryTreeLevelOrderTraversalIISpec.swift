import XCTest
@testable import LeetCode
@testable import Structure

class BinaryTreeLevelOrderTraversalIISpec: XCTestCase {

    fileprivate let questions: [(([Int?]), [[Int]])] = [
        (([3, 9, 20, nil, nil, 15, 7]), [[15, 7], [9, 20], [3]]),
        (([1]), [[1]]),
        (([]), [])
    ]

    func test() {
        let solution = BinaryTreeLevelOrderTraversalII()
        for ((elements), answer) in questions {
            let root = BinaryTree(elements)
            XCTAssertEqual(solution.levelOrderBottom(root), answer)
        }
    }
}
