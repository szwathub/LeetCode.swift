import XCTest
@testable import LeetCode

final class SlowestKeySpec: XCTestCase {

    fileprivate let questions: [(([Int], String), Character)] = [
        (([9, 29, 49, 50], "cbcd"), "c"),
        (([12, 23, 36, 46, 62], "spuda"), "a")
    ]

    func testSlowestKey() {
        let solution = SlowestKey()
        for ((releaseTimes, keysPressed), answer) in questions {
            XCTAssertEqual(solution.slowestKey(releaseTimes, keysPressed), answer)
        }
    }
}
