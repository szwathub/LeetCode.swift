import XCTest
@testable import LeetCode
@testable import Structure

final class RangeSumofBSTSpec: XCTestCase {

    fileprivate let questions: [(([Int?], Int, Int), Int)] = [
        (([10, 5, 15, 3, 7, nil, 18], 7, 15), 32),
        (([10, 5, 15, 3, 7, 13, 18, 1, nil, 6], 6, 10), 23),

    ]

    func test() {
        let solution = RangeSumofBST()
        for ((elements, low, high), answer) in questions {
            let root = BinaryTree(elements)
            XCTAssertEqual(solution.rangeSumBST(root, low, high), answer)
        }
    }
}
