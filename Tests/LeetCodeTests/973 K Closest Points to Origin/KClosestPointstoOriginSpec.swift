import XCTest
@testable import LeetCode

final class KClosestPointstoOriginSpec: XCTestCase {

    fileprivate let questions: [(([[Int]], Int), [[Int]])] = [
        (([[1, 3], [-2, 2]], 1), [[-2, 2]]),
        (([[3, 3], [5, -1], [-2, 4]], 2), [[3, 3], [-2, 4]])
    ]

    func testKClosestPointstoOrigin() {
        let solution = KClosestPointstoOrigin()
        for ((points, k), answer) in questions {
            XCTAssertEqual(solution.kClosest(points, k), answer)
        }
    }
}
