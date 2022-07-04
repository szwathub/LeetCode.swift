import XCTest
@testable import LeetCode

final class DuplicateZerosSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([1, 0, 2, 3, 0, 4, 5, 0]), [1, 0, 0, 2, 3, 0, 0, 4]),
        (([1, 2, 3]), [1, 2, 3]),
        (([0, 0, 0, 0, 0, 0, 0]), [0, 0, 0, 0, 0, 0, 0])
    ]

    func testDuplicateZeros() {
        let solution = DuplicateZeros()
        for ((arr), answer) in questions {
            var arr = arr
            solution.duplicateZeros(&arr)
            XCTAssertEqual(arr, answer)
        }
    }
}
