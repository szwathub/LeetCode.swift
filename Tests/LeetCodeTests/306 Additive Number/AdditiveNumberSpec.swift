import XCTest
@testable import LeetCode

final class AdditiveNumberSpec: XCTestCase {

    fileprivate let questions: [((String), Bool)] = [
        (("0122358"), false),
        (("112358"), true),
        (("1012358"), false),
        (("199100199"), true)
    ]

    func testAdditiveNumber() {
        let solution = AdditiveNumber()
        for ((num), answer) in questions {
            XCTAssertEqual(solution.isAdditiveNumber(num), answer)
        }
    }
}
