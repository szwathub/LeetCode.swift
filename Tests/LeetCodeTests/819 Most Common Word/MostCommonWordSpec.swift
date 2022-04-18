import XCTest
@testable import LeetCode

final class MostCommonWordSpec: XCTestCase {

    fileprivate let questions: [((String, [String]), String)] = [
        (("Bob hit a ball, the hit BALL flew far after it was hit.", ["hit"]), "ball"),
        (("a.", []), "a")
    ]

    func testMostCommonWord() {
        let solution = MostCommonWord()
        for ((paragraph, banned), answer) in questions {
            XCTAssertEqual(solution.mostCommonWord(paragraph, banned), answer)
        }
    }
}
