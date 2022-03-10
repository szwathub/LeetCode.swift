import XCTest
@testable import LeetCode
@testable import Structure

final class NaryTreePreorderTraversalSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), [Int])] = [
        (([]), []),
        (([1, nil, 3, 2, 4, nil, 5, 6]), [1, 3, 5, 6, 2, 4]),
        (([1, nil, 2, 3, 4, 5, nil, nil, 6, 7, nil, 8, nil, 9, 10, nil, nil, 11, nil, 12, nil, 13, nil, nil, 14]),
         [1, 2, 3, 6, 7, 11, 14, 4, 8, 12, 5, 9, 13, 10])
    ]

    func testNaryTreePreorderTraversal() {
        let solution = NaryTreePreorderTraversal()
        for ((elements), answer) in questions {
            let tree = Tree(elements)
            XCTAssertEqual(solution.preorderI(tree.root), answer)
            XCTAssertEqual(solution.preorderII(tree.root), answer)
        }
    }
}
