import XCTest
@testable import LeetCode

final class ImplementMagicDictionarySpec: XCTestCase {

    func testImplementMagicDictionary() {
        let solution = MagicDictionary()
        solution.buildDict(["hello", "leetcode"])
        XCTAssertFalse(solution.search("hello"))
        XCTAssertTrue(solution.search("hhllo"))
        XCTAssertFalse(solution.search("hell"))
        XCTAssertFalse(solution.search("leetcoded"))
    }
}
