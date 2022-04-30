import XCTest
@testable import LeetCode
@testable import Structure

final class SumRoottoLeafNumbersSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), Int)] = [
        (([1, 2, 3]), 25),
        (([4, 9, 0, 5, 1]), 1026)
    ]

    func testSumRoottoLeafNumbers() {
        let solution = SumRoottoLeafNumbers()
        for ((elements), answer) in questions {
            XCTAssertEqual(solution.sumNumbers(BinaryTree(elements).root), answer)
        }
    }
}
