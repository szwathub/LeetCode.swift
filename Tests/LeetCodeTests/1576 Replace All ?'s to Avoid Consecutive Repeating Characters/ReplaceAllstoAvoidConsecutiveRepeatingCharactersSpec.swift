import XCTest
@testable import LeetCode

final class ReplaceAllstoAvoidConsecutiveRepeatingCharactersSpec: XCTestCase {

    fileprivate let questions: [((String), String)] = [
        (("?zs"), "azs"),
        (("ubv?w"), "ubvaw"),
        (("uba?w"), "ubabw")
    ]

    func testReplaceAllstoAvoidConsecutiveRepeatingCharacters() {
        let solution = ReplaceAllstoAvoidConsecutiveRepeatingCharacters()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.modifyString(s), answer)
        }
    }
}
