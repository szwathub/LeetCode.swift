import XCTest
@testable import LeetCode
@testable import Structure

final class FindBottomLeftTreeValueSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), Int)] = [
        (([]), 0),
        (([2, 1, 3]), 1),
        (([1, 2, 3, 4, nil, 5, 6, nil, nil, 7]), 7)
    ]

    func testMinimumNumberofRefuelingStops() {
        let solution = FindBottomLeftTreeValue()
        for ((elements), answer) in questions {
            XCTAssertEqual(solution.findBottomLeftValue(BinaryTree(elements).root), answer)
        }
    }
}
