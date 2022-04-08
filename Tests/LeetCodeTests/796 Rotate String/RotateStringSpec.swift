import XCTest
@testable import LeetCode

final class RotateStringSpec: XCTestCase {

    fileprivate let questions: [((String, String), Bool)] = [
        (("abcde", "cdeab"), true),
        (("abcde", "abced"), false)
    ]

    func testRotateString() {
        let solution = RotateString()
        for ((s, goal), answer) in questions {
            XCTAssertEqual(solution.rotateString(s, goal), answer)
        }
    }
}
