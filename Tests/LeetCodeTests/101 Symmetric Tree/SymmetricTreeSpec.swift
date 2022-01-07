import XCTest
@testable import LeetCode
@testable import Structure

final class SymmetricTreeSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), Bool)] = [
        (([1, 2, 2, 3, 4, 4, 3]), true),
        (([1, 2, 3, 3, 4, 4, 3]), false),
        (([1, 2, 2, nil, 3, nil, 3]), false),
        (([1, 2, 2, 3, 3, nil, 3]), false),
        (([]), true)
    ]

    func testSymmetricTreeSpec() {
        let solution = SymmetricTree()
        for ((elements), answer) in questions {
            let tree = BinaryTree(elements)
            XCTAssertEqual(solution.isSymmetricI(tree.root), answer)
            XCTAssertEqual(solution.isSymmetricII(tree.root), answer)
        }
    }
}
