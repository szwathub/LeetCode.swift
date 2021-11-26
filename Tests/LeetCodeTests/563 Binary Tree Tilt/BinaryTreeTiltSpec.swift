import XCTest
@testable import LeetCode

final class BinaryTreeTiltSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), Int)] = [
        (([1, 2, 3]), 1),
        (([4, 2, 9, 3, 5, nil, 7]), 15)
    ]

    func testBinaryTreeTilt() {
        let solution = BinaryTreeTilt()
        for ((elements), answer) in questions {
            solution.tilt = 0
            let tree = BinaryTree(elements: elements)
            XCTAssertEqual(solution.findTilt(tree.root), answer)
        }
    }
}
