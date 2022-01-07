import XCTest
@testable import LeetCode
@testable import Structure

final class TwoSumIVInputisaBSTSpec: XCTestCase {

    fileprivate let questions: [(([Int?], Int), Bool)] = [
        (([5, 3, 6, 2, 4, nil, 7], 9), true),
        (([5, 3, 6, 2, 4, nil, 7], 28), false),
        (([2, 1, 3], 4), true),
        (([2, 1, 3], 1), false),
        (([2, 1, 3], 3), true),
        (([], 3), false)
    ]

    func testTwoSumIVInputisaBST() {
        let solution = TwoSumIVInputisaBST()
        for ((elements, k), answer) in questions {
            let tree = BinaryTree(elements)
            XCTAssertEqual(solution.findTarget(tree.root, k), answer)
        }
    }
}
