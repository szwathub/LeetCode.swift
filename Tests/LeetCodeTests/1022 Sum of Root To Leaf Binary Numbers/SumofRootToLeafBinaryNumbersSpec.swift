import XCTest
@testable import LeetCode
@testable import Structure

final class SumofRootToLeafBinaryNumbersSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), Int)] = [
        (([1, 0, 1, 0, 1, 0, 1]), 22),
        (([0]), 0)
    ]

    func testSumofRootToLeafBinaryNumbers() {
        let solution = SumofRootToLeafBinaryNumbers()
        for ((elements), answer) in questions {
            XCTAssertEqual(solution.sumRootToLeaf(BinaryTree(elements).root), answer)
        }
    }
}
