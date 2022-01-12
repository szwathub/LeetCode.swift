import XCTest
@testable import LeetCode

final class AddStringsSpec: XCTestCase {

    fileprivate let questions: [((String, String), String)] = [
        (("11", "123"), "134"),
        (("456", "77"), "533"),
        (("0", "0"), "0")
    ]

    func testAddStrings() {
        let solution = AddStrings()
        for ((num1, num2), answer) in questions {
            XCTAssertEqual(solution.addStrings(num1, num2), answer)
        }
    }
}
