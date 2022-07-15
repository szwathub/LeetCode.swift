import XCTest
@testable import LeetCode

final class PrefixandSuffixSearchSpec: XCTestCase {

    func testPrefixandSuffixSearch() {
        let solution = WordFilter(
            ["ab", "f", "abc", "abcd", "abcde", "abcdef", "ef"]
        )
        XCTAssertEqual(solution.f("ab", "ab"), 0)
        XCTAssertEqual(solution.f("ab", "cba"), -1)
        XCTAssertEqual(solution.f("ab", "f"), 5)
    }
}
