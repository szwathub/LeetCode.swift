import XCTest
@testable import LeetCode
@testable import Structure

final class KthSmallestElementinaBSTSpec: XCTestCase {

    fileprivate let questions: [(([Int?], Int), Int)] = [
        (([3, 1, 4, nil, 2], 1), 1),
        (([5, 3, 6, 2, 4, nil, nil, 1], 3), 3)
    ]

    func testKthSmallestElementinaBST() {
        let solution = KthSmallestElementinaBST()
        for ((elements, k), answer) in questions {
            XCTAssertEqual(solution.kthSmallest(BinaryTree(elements).root, k), answer)
        }
    }
}
