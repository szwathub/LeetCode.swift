import XCTest
@testable import LeetCode

final class OccurrencesAfterBigramSpec: XCTestCase {

    fileprivate let questions: [((String, String, String), [String])] = [
        (("alice is a good girl she is a good student", "a", "good"), ["girl", "student"]),
        (("we will we will rock you", "we", "will"), ["we", "rock"]),
        (("we will", "we", "will"), [])
    ]

    func testOccurrencesAfterBigram() {
        let solution = OccurrencesAfterBigram()
        for ((text, first, second), answer) in questions {
            XCTAssertEqual(solution.findOcurrences(text, first, second), answer)
        }
    }

}
