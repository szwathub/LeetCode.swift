import XCTest
@testable import LeetCode
@testable import Structure

final class NaryTreeLevelOrderTraversalSpec: XCTestCase {

    func test() {
        let node1 = Node(value: 1)
        let node3 = Node(value: 3)

        node1.children = [node3, Node(value: 2), Node(value: 4)]
        node3.children = [Node(value: 5), Node(value: 6)]

        let solution = NaryTreeLevelOrderTraversal()
        XCTAssertEqual(solution.levelOrder(node1), [[1], [3, 2, 4], [5, 6]])
        XCTAssertEqual(solution.levelOrder(nil), [])
    }
}
