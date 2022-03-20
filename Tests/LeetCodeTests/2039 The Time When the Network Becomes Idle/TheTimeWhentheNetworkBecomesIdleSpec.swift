import XCTest
@testable import LeetCode

final class TheTimeWhentheNetworkBecomesIdleSpec: XCTestCase {

    fileprivate let questions: [(([[Int]], [Int]), Int)] = [
        (([[0, 1], [1, 2]], [0, 2, 1]), 8),
        (([[0, 1], [0, 2], [1, 2]], [0, 10, 10]), 3)
    ]

    func testTheTimeWhentheNetworkBecomesIdle() {
        let solution = TheTimeWhentheNetworkBecomesIdle()
        for ((edges, patience), answer) in questions {
            XCTAssertEqual(solution.networkBecomesIdle(edges, patience), answer)
        }
    }
}
