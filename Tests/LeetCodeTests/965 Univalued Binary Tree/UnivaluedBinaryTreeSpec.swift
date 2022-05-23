import XCTest
@testable import LeetCode
@testable import Structure

final class UnivaluedBinaryTreeSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), Bool)] = [
        (([1, 1, 1, 1, 1, nil, 1]), true),
        (([2, 2, 2, 5, 2]), false),
        (([2, 2, 5, 2, 2]), false),
        (([]), true)
    ]

    func testUnivaluedBinaryTree() {
        let solution = UnivaluedBinaryTree()
        for ((elements), answer) in questions {
            XCTAssertEqual(solution.isUnivalTree(BinaryTree(elements).root), answer)
        }
    }
}
