import XCTest
@testable import LeetCode

final class BulbSwitcherSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((3), 1),
        ((0), 0),
        ((1), 1)
    ]

    func testBulbSwitcher() {
        let solution = BulbSwitcher()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.bulbSwitch(n), answer)
        }
    }
}
