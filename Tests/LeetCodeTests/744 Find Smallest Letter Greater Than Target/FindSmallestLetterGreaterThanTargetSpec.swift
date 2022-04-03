import XCTest
@testable import LeetCode

final class FindSmallestLetterGreaterThanTargetSpec: XCTestCase {

    fileprivate let questions: [(([Character], Character), Character)] = [
        ((["c", "f", "j"], "a"), "c"),
        ((["c", "f", "j"], "c"), "f"),
        ((["c", "f", "j"], "d"), "f"),
        ((["c", "f", "j"], "j"), "c")
    ]

    func testFindSmallestLetterGreaterThanTarget() {
        let solution = FindSmallestLetterGreaterThanTarget()
        for ((letters, target), answer) in questions {
            XCTAssertEqual(solution.nextGreatestLetter(letters, target), answer)
        }
    }
}
