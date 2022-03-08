import XCTest
@testable import LeetCode

final class PlatesBetweenCandlesSpec: XCTestCase {

    fileprivate let questions: [((String, [[Int]]), [Int])] = [
        (("**|**|***|", [[2, 5], [5, 9]]), [2, 3]),
        (("***|**|*****|**||**|*", [[1, 17], [4, 5], [14, 17], [5, 11], [15, 16]]), [9, 0, 0, 0, 0])
    ]

    func testPlatesBetweenCandles() {
        let solution = PlatesBetweenCandles()
        for ((s, queries), answer) in questions {
            XCTAssertEqual(solution.platesBetweenCandles(s, queries), answer)
        }
    }
}
