import XCTest
@testable import LeetCode

final class FindServersThatHandledMostNumberofRequestsSpec: XCTestCase {

    fileprivate let questions: [((Int, [Int], [Int]), [Int])] = [
        ((3, [1, 2, 3, 4, 5], [5, 2, 3, 3, 3]), [1]),
        ((3, [1, 2, 3, 4], [1, 2, 1, 2]), [0]),
        ((3, [1, 2, 3], [10, 12, 11]), [0, 1, 2])
    ]

    func testFindServersThatHandledMostNumberofRequests() {
        let solution = FindServersThatHandledMostNumberofRequests()
        for ((k, arrival, load), answer) in questions {
            XCTAssertEqual(solution.busiestServers(k, arrival, load), answer)
        }
    }
}
