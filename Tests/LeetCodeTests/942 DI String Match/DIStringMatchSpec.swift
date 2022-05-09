import XCTest
@testable import LeetCode

final class DIStringMatchSpec: XCTestCase {

    fileprivate let questions: [((String), [Int])] = [
        (("IDID"), [0, 4, 1, 3, 2]),
        (("III"), [0, 1, 2, 3]),
        (("DDI"), [3, 2, 0, 1])
    ]

    func testDIStringMatch() {
        let solution = DIStringMatch()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.diStringMatch(s), answer)
        }
    }
}
