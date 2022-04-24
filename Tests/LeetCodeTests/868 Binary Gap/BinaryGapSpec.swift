import XCTest
@testable import LeetCode

final class BinaryGapSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((22), 2),
        ((8), 0),
        ((5), 2)
    ]

    func testBinaryGap() {
        let solution = BinaryGap()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.binaryGap(n), answer)
        }
    }
}
