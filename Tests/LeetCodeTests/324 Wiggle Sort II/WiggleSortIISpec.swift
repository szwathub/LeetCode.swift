import XCTest
@testable import LeetCode

final class WiggleSortIISpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([1, 5, 1, 1, 6, 4]), [1, 6, 1, 5, 1, 4]),
        (([1, 3, 2, 2, 3, 1]), [2, 3, 1, 3, 1, 2])
    ]

    func testWiggleSortII() {
        let solution = WiggleSortII()
        for ((element), answer) in questions {
            var nums = element
            solution.wiggleSort(&nums)
            XCTAssertEqual(nums, answer)
        }
    }
}
