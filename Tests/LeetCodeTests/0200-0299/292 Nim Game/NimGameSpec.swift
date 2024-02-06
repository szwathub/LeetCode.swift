import XCTest
@testable import LeetCode

final class NimGameSpec: XCTestCase {

    fileprivate let questions: [((Int), Bool)] = [
        ((4), false),
        ((1), true),
        ((2), true),
    ]

    func test() {
        let solution = NimGame()
        for ((n), answer) in questions {
            XCTAssertEqual(
                solution.canWinNim(n),
                answer
            )
        }
    }
}
