import XCTest
@testable import LeetCode
@testable import Structure

final class CousinsinBinaryTreeSpec: XCTestCase {

    fileprivate let questions: [(([Int?], Int, Int), Bool)] = [
        (([], 4, 3), false),
        (([1, 2, 3, 4], 4, 3), false),
        (([1, 2, 3, nil, 4, nil, 5], 5, 4), true),
        (([1, 2, 3, nil, 4], 2, 3), false),
        (([10, 1, 2, 3, 4, 5, 6], 4, 5), true)
    ]

    func test() {
        let solution = CousinsinBinaryTree()
        for ((elements, x, y), answer) in questions {
            let root = BinaryTree(elements)
            XCTAssertEqual(solution.isCousins(root, x, y), answer)
        }
    }
}
