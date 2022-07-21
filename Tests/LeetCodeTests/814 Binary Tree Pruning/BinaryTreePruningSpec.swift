import XCTest
@testable import LeetCode
@testable import Structure

final class BinaryTreePruningSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), [Int?])] = [
        (([1, nil, 0, 0, 1]), [1, nil, 0, nil, 1]),
        (([1, 0, 1, 0, 0, 0, 1]), [1, nil, 1, nil, 1]),
        (([1, 1, 0, 1, 1, 0, 1, 0]), [1, 1, 0, 1, 1, nil, 1])
    ]

    func testBinaryTreePruning() {
        let solution = BinaryTreePruning()
        for ((element), answer) in questions {
            let result = solution.pruneTree(BinaryTree(element).root)
            XCTAssertTrue(result == BinaryTree(answer).root)
        }
    }
}
