import XCTest
@testable import Structure

class BinaryTreeSpec: XCTestCase {

    func test() {
        let empty = BinaryTree([])
        XCTAssertNil(empty)

        let literal = BinaryTree([8, 2, 10, 9, 7, 5])
        XCTAssertEqual(literal?.value, 8)

        let other = BinaryTree([nil, 1, 2])
        XCTAssertNil(other?.description)

        let description = BinaryTree([8, 2, 10])
        XCTAssertEqual(
            description?.description,
            "{value: 8, left = {value: 2}, right = {value: 10}}"
        )

        let node = BinaryTree(value: 10)
        node.value = 11
        XCTAssertEqual(node.value, 11)

        let literalEqual = BinaryTree([8, 2, 10, 9, 7, 5])
        let equteEqual = BinaryTree([8, 2, 10, 9, 7, 5])
        XCTAssertTrue(literalEqual == equteEqual)

        let treeEqual = BinaryTree([8, 10, 9, 7, 5])
        XCTAssertFalse(equteEqual == treeEqual)

        let traversal = BinaryTree([8, 2, 10, 9, 7, 5])
        var answer = [Int]()
        traversal?.preorderTraversal({ answer.append($0.value) })
        XCTAssertEqual(answer, [8, 2, 9, 7, 10, 5])

        answer.removeAll()
        traversal?.inorderTraversal({ answer.append($0.value) })
        XCTAssertEqual(answer, [9, 2, 7, 8, 5, 10])

        answer.removeAll()
        traversal?.postorderTraversal({ answer.append($0.value) })
        XCTAssertEqual(answer, [9, 7, 2, 5, 10, 8])

        var list = [[Int]]()
        traversal?.levelOrderTraversal({ level, node in
            if level < list.count {
                list[level].append(node.value)
            } else {
                list.append([node.value])
            }
        })
        XCTAssertEqual(list, [[8], [2, 10], [9, 7, 5]])
    }
}
