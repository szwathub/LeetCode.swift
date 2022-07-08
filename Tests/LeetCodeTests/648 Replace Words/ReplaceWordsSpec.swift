import XCTest
@testable import LeetCode

final class ReplaceWordsSpec: XCTestCase {

    fileprivate let questions: [(([String], String), String)] = [
        (
            (
                ["cat", "bat", "rat"],
                "the cattle was rattled by the battery"
            ),
            "the cat was rat by the bat"
        ),
        (
            (
                ["a", "b", "c"],
                "aadsfasf absbs bbab cadsfafs"
            ),
            "a a b c"
        )
    ]

    func testReplaceWords() {
        let solution = ReplaceWords()
        for ((dictionary, sentence), answer) in questions {
            XCTAssertEqual(solution.replaceWords(dictionary, sentence), answer)
        }
    }
}
