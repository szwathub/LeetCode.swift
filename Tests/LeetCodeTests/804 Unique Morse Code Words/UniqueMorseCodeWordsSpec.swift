import XCTest
@testable import LeetCode

final class UniqueMorseCodeWordsSpec: XCTestCase {

    fileprivate let questions: [(([String]), Int)] = [
        ((["gin", "zen", "gig", "msg"]), 2),
        ((["a"]), 1)
    ]

    func testUniqueMorseCodeWords() {
        let solution = UniqueMorseCodeWords()
        for ((words), answer) in questions {
            XCTAssertEqual(solution.uniqueMorseRepresentations(words), answer)
        }
    }
}
