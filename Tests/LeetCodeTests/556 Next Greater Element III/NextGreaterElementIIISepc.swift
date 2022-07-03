import XCTest
@testable import LeetCode

final class NextGreaterElementIIISepc: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((12), 21),
        ((21), -1),
        ((1234), 1243),
        ((230241), 230412),
        ((2147483486), -1)
    ]

    func testNextGreaterElementIII() {
        let solution = NextGreaterElementIII()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.nextGreaterElement(n), answer)
        }
    }
}
