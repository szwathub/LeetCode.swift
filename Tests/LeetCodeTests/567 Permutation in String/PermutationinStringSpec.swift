import XCTest
@testable import LeetCode

final class PermutationinStringSpec: XCTestCase {

    fileprivate let questions: [((String, String), Bool)] = [
        (("ab", "eidbaooo"), true),
        (("ab", "eidboaoo"), false),
        (("eidboaoo", "ab"), false)
    ]

    func testPermutationinString() {
        let solution = PermutationinString()
        for ((s1, s2), answer) in questions {
            XCTAssertEqual(solution.checkInclusion(s1, s2), answer)
        }
    }
}
