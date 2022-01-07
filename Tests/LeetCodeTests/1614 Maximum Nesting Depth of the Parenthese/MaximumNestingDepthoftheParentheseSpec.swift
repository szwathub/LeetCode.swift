import XCTest
@testable import LeetCode

final class MaximumNestingDepthoftheParentheseSpec: XCTestCase {

    fileprivate let questions: [((String), Int)] = [
        (("(1+(2*3)+((8)/4))+1"), 3),
        (("(1)+((2))+(((3)))"), 3)
    ]

    func testMaximumNestingDepthoftheParenthese() {
        let solution = MaximumNestingDepthoftheParenthese()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.maxDepth(s), answer)
        }
    }
}
