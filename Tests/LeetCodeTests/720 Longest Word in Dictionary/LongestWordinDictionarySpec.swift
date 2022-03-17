import XCTest
@testable import LeetCode

final class LongestWordinDictionarySpec: XCTestCase {

    fileprivate let questions: [(([String]), String)] = [
        ((["w", "wo", "wor", "worl", "world"]), "world"),
        ((["a", "banana", "app", "appl", "ap", "apply", "apple"]), "apple")
    ]

    func testLongestWordinDictionary() {
        let solution = LongestWordinDictionary()
        for ((words), answer) in questions {
            XCTAssertEqual(solution.longestWord(words), answer)
        }
    }
}
