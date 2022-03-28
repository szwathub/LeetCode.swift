import XCTest
@testable import LeetCode

final class LongestUncommonSubsequenceISpec: XCTestCase {

    fileprivate let questions: [((String, String), Int)] = [
        (("aba", "cdc"), 3),
        (("aaa", "bbb"), 3),
        (("aaa", "aaa"), -1)
    ]

    func testLongestUncommonSubsequenceI() {
        let solution = LongestUncommonSubsequenceI()
        for ((a, b), answer) in questions {
            XCTAssertEqual(solution.findLUSlength(a, b), answer)
        }
    }
}
