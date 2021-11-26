import XCTest
@testable import LeetCode

final class BullsandCowsSpec: XCTestCase {

    fileprivate let questions: [((String, String), String)] = [
        (("1807", "7810"), "1A3B"),
        (("1123", "0111"), "1A1B"),
        (("1", "0"), "0A0B"),
        (("1", "1"), "1A0B"),
        (("1122", "2211"), "0A4B")
    ]

    func testBullsandCows() {
        let solution = BullsandCows()
        for ((secret, guess), answer) in questions {
            XCTAssertEqual(solution.getHint(secret, guess), answer)
        }
    }
}
