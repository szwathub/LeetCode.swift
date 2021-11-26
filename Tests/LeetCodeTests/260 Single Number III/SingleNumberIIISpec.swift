import XCTest
@testable import LeetCode

final class SingleNumberIIISpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([1, 2, 1, 3, 2, 5]), [3, 5]),
        (([-1, 0]), [-1, 0]),
        (([0, 1]), [0, 1])
    ]

    func testSingleNumberIII() {
        let solution = SingleNumberIII()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.singleNumber(nums).sorted(), answer.sorted())
        }
    }
}
