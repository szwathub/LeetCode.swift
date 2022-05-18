import XCTest
@testable import LeetCode

final class VerifyinganAlienDictionarySpec: XCTestCase {

    fileprivate let questions: [(([String], String), Bool)] = [
        ((["hello", "leetcode"], "hlabcdefgijkmnopqrstuvwxyz"), true),
        ((["word", "world", "row"], "worldabcefghijkmnpqstuvxyz"), false),
        ((["apple", "app"], "abcdefghijklmnopqrstuvwxyz"), false),
        ((["kuvp", "q"], "ngxlkthsjuoqcpavbfdermiywz"), true)
    ]

    func testVerifyinganAlienDictionary() {
        let solution = VerifyinganAlienDictionary()
        for ((words, order), answer) in questions {
            XCTAssertEqual(solution.isAlienSorted(words, order), answer)
        }
    }
}
