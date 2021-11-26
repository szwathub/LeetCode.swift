import XCTest
@testable import LeetCode

final class ReverseBitsSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((43261596), 964176192),
        ((4294967293), 3221225471)
    ]

    func testReverseBits() {
        let solution = ReverseBits()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.reverseBits(n), answer)
        }
    }
}
