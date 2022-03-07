import XCTest
@testable import LeetCode

final class Base7Spec: XCTestCase {

    fileprivate let questions: [((Int), String)] = [
        ((0), "0"),
        ((100), "202"),
        ((-7), "-10")
    ]

    func testBase7() {
        let solution = Base7()
        for ((num), answer) in questions {
            XCTAssertEqual(solution.convertToBase7(num), answer)
        }
    }
}
