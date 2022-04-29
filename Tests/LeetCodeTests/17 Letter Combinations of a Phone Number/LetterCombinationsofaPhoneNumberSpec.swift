import XCTest
@testable import LeetCode

final class LetterCombinationsofaPhoneNumberSpec: XCTestCase {

    fileprivate let questions: [((String), [String])] = [
        (("23"), ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]),
        ((""), []),
        (("2"), ["a", "b", "c"])
    ]

    func testLetterCombinationsofaPhoneNumber() {
        let solution = LetterCombinationsofaPhoneNumber()
        for ((digits), answer) in questions {
            XCTAssertEqual(solution.letterCombinations(digits), answer)
        }
    }
}
