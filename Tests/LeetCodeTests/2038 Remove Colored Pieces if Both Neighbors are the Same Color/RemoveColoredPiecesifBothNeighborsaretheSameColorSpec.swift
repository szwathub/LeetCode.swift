import XCTest
@testable import LeetCode

final class RemoveColoredPiecesifBothNeighborsaretheSameColorSpec: XCTestCase {

    fileprivate let questions: [((String), Bool)] = [
        (("AAABABB"), true),
        (("AA"), false),
        (("ABBBBBBBAAA"), false)
    ]

    func testRemoveColoredPiecesifBothNeighborsaretheSameColor() {
        let solution = RemoveColoredPiecesifBothNeighborsaretheSameColor()
        for ((colors), answer) in questions {
            XCTAssertEqual(solution.winnerOfGame(colors), answer)
        }
    }
}
