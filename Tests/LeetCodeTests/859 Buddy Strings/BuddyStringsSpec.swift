import XCTest
@testable import LeetCode

final class BuddyStringsSpec: XCTestCase {

    fileprivate let questions: [((String, String), Bool)] = [
        (("a", "ab"), false),
        (("ab", "ba"), true),
        (("ab", "ab"), false),
        (("aa", "aa"), true),
        (("aaaaaaabc", "baaaaaabc"), false),
        (("aaaaaaabc", "aaaaaaacb"), true),
        (("abcd", "badc"), false)
    ]

    func testBuddyStrings() {
        let solution = BuddyStrings()
        for ((s, goal), answer) in questions {
            XCTAssertEqual(solution.buddyStrings(s, goal), answer)
        }
    }
}
