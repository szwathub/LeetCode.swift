import XCTest
@testable import LeetCode

final class SelfCrossingSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Bool)] = [
        (([1, 2, 3]), false),
        (([2, 1, 1, 2]), true),
        (([1, 2, 3, 4]), false),
        (([1, 1, 1, 1]), true),
        (([1, 1, 2, 1, 1]), true),
        (([1, 2, 3, 4, 2, 2]), true)
    ]

    func testSelfCrossing() {
        let solution = SelfCrossing()
        for ((distance), answer) in questions {
            XCTAssertEqual(solution.isSelfCrossing(distance), answer)
        }
    }
}
