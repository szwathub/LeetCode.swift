import XCTest
@testable import LeetCode
@testable import Structure

final class ConvertSortedArraytoBinarySearchTreeSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int?])] = [
        (([-10, -3, 0, 5, 9]), [0, -10, 5, nil, -3, nil, 9]),
        (([1, 3]), [1, nil, 3])
    ]

    func testConvertSortedArraytoBinarySearchTree() {
        let solution = ConvertSortedArraytoBinarySearchTree()
        for ((nums), answer) in questions {
            XCTAssertTrue(solution.sortedArrayToBST(nums) == BinaryTree(answer).root)
        }
    }
}
