import XCTest
@testable import LeetCode
@testable import Structure

final class BinaryTreeRightSideViewSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), [Int])] = [
        (([1, 2, 3, nil, 5, nil, 4]), [1, 3, 4]),
        (([1, nil, 3]), [1, 3]),
        (([]), [])
    ]

    func testBinaryTreeRightSideView() {
        let solution = BinaryTreeRightSideView()
        for ((elements), answer) in questions {
            XCTAssertEqual(solution.rightSideView(BinaryTree(elements).root), answer)
        }
    }
}
