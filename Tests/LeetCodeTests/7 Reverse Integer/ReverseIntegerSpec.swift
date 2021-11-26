import XCTest
@testable import LeetCode

final class ReverseIntegerSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((321), 123),
        ((-123), -321),
        ((120), 21),
        ((1534236469), 0)
    ]

    func testReverseInteger() {
        let solution = ReverseInteger()
        for ((x), answer) in questions {
            XCTAssertEqual(solution.reverse(x), answer)
        }
    }
}
