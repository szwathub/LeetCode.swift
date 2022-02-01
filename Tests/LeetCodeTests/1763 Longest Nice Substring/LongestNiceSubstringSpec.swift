import XCTest
@testable import LeetCode

final class LongestNiceSubstringSpec: XCTestCase {

    fileprivate let questions: [((String), String)] = [
        (("YazaAay"), "aAa"),
        (("Bb"), "Bb"),
        (("c"), ""),
        (("dDzeE"), "dD")
    ]

    func testLongestNiceSubstring() {
        let solution = LongestNiceSubstring()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.longestNiceSubstring(s), answer)
        }
    }
}
