import XCTest
@testable import LeetCode

final class FindAllDuplicatesinanArraySpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([4, 3, 2, 7, 8, 2, 3, 1]), [2, 3]),
        (([1, 1, 2]), [1]),
        (([1]), [])
    ]

    func testFindAllDuplicatesinanArray() {
        let solution = FindAllDuplicatesinanArray()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.findDuplicates(nums).sorted(), answer)
        }
    }
}
