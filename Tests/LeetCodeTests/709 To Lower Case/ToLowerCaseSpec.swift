import XCTest
@testable import LeetCode

final class ToLowerCaseSpec: XCTestCase {

    fileprivate let questions: [((String), String)] = [
        (("Hello"), "hello"),
        (("here"), "here"),
        (("LOVELY"), "lovely")
    ]

    func testToLowerCase() {
        let solution = ToLowerCase()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.toLowerCase(s), answer)
        }
    }
}
