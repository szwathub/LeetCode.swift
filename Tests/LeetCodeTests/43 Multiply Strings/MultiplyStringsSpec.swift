import XCTest
@testable import LeetCode

final class MultiplyStringsSpec: XCTestCase {

    fileprivate let questions: [((String, String), String)] = [
        (("2", "3"), "6"),
        (("123", "456"), "56088"),
        (("0", "1123"), "0"),
        (("321", "789"), "253269"),
        (("123456789", "987654321"), "121932631112635269")
    ]

    func testMultiplyStrings() {
        let solution = MultiplyStrings()
        for ((num1, num2), answer) in questions {
            XCTAssertEqual(solution.multiply(num1, num2), answer)
        }
    }
}
