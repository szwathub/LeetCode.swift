import XCTest
@testable import LeetCode

final class FindAllAnagramsInaStringSpec: XCTestCase {

    fileprivate let questions: [((String, String), [Int])] = [
        (("cbaebabacd", "abc"), [0, 6]),
        (("abab", "ab"), [0, 1, 2]),
        (("ab", "abc"), [])
    ]

    func testFindAllAnagramsInaString() {
        let solution = FindAllAnagramsInaString()
        for ((s, p), answer) in questions {
            XCTAssertEqual(solution.findAnagrams(s, p), answer)
        }
    }
}
