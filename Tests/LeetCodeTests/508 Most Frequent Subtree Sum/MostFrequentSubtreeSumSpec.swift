import XCTest
@testable import LeetCode
@testable import Structure

final class MostFrequentSubtreeSumSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), [Int])] = [
        (([5, 2, -3]), [2, -3, 4]),
        (([5, 2, -5]), [2]),
        (([]), [])
    ]

    func testMostFrequentSubtreeSum() {
        let solution = MostFrequentSubtreeSum()
        for ((elements), answer) in questions {
            XCTAssertEqual(solution.findFrequentTreeSum(BinaryTree(elements).root).sorted(),
                           answer.sorted())
        }
    }
}
