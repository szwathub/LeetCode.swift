import XCTest
@testable import LeetCode

final class DeleteColumnstoMakeSortedSpec: XCTestCase {

    fileprivate let questions: [(([String]), Int)] = [
        ((["cba", "daf", "ghi"]), 1),
        ((["a", "b"]), 0),
        ((["zyx", "wvu", "tsr"]), 3)
    ]

    func testDeleteColumnstoMakeSorted() {
        let solution = DeleteColumnstoMakeSorted()
        for ((strs), answer) in questions {
            XCTAssertEqual(solution.minDeletionSize(strs), answer)
        }
    }
}
