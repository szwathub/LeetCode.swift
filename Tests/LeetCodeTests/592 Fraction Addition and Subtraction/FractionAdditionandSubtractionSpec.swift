import XCTest
@testable import LeetCode

final class FractionAdditionandSubtractionSpec: XCTestCase {

    fileprivate let questions: [((String), String)] = [
        (("-1/2+1/2"), "0/1"),
        (("-1/2+1/2+1/3"), "1/3"),
        (("1/3-1/2"), "-1/6")
    ]

    func testFractionAdditionandSubtraction() {
        let solution = FractionAdditionandSubtraction()
        for ((expression), answer) in questions {
            XCTAssertEqual(solution.fractionAddition(expression), answer)
        }
    }
}
