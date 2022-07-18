import XCTest
@testable import LeetCode

final class LongestUncommonSubsequenceIISpec: XCTestCase {

    fileprivate let questions: [(([String]), Int)] = [
        ((["aba", "cdc", "eae"]), 3),
        ((["aaa", "aaa", "aa"]), -1)
    ]

    func testLongestUncommonSubsequenceII() {
        let solution = LongestUncommonSubsequenceII()
        for ((strs), answer) in questions {
            XCTAssertEqual(solution.findLUSlength(strs), answer)
        }
    }
}
