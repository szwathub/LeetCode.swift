import XCTest
@testable import LeetCode
@testable import Structure

final class ConstructStringfromBinaryTreeSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), String)] = [
        (([1, 2, 3, 4]), "1(2(4))(3)"),
        (([1, 2, 3, nil, 4]), "1(2()(4))(3)")
    ]

    func testConstructStringfromBinaryTree() {
        let solution = ConstructStringfromBinaryTree()
        for ((elements), answer) in questions {
            XCTAssertEqual(solution.tree2str(BinaryTree(elements).root), answer)
        }
    }
}
