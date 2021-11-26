import XCTest
@testable import LeetCode

final class RansomNoteSpec: XCTestCase {

    fileprivate let questions: [((String, String), Bool)] = [
        (("a", "b"), false),
        (("aa", "ab"), false),
        (("aa", "aab"), true),
        (("aaaa", "aab"), false)
    ]

    func testRansomNote() {
        let solution = RansomNote()
        for ((ransomNote, magazine), answer) in questions {
            XCTAssertEqual(solution.canConstruct(ransomNote, magazine), answer)
        }
    }
}
