import XCTest
@testable import LeetCode
@testable import Structure

final class FindLargestValueinEachTreeRowSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), [Int])] = [
        (([1, 3, 2, 5, 3, nil, 9]), [1, 3, 9]),
        (([1, 2, 3]), [1, 3]),
        (([]), [])
    ]

    func testFindLargestValueinEachTreeRow() {
        let solution = FindLargestValueinEachTreeRow()
        for ((element), answer) in questions {
            XCTAssertEqual(solution.largestValues(BinaryTree(element).root), answer)
        }
    }
}
