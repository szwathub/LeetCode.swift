import XCTest
@testable import LeetCode

final class ValidTicTacToeStateSpec: XCTestCase {

    fileprivate let questions: [(([String]), Bool)] = [
        ((["O  ", "   ", "   "]), false),
        ((["XOX", " X ", "   "]), false),
        ((["XXX", "   ", "OOO"]), false),
        ((["XOX", "O O", "XOX"]), true),
        ((["XOX", "OOX", "XO "]), true),
        ((["XOX", " OX", "XO "]), false),
        ((["OXX", "OOX", "X O"]), true),
        ((["XXO", "OOX", "O X"]), true)
    ]

    func testValidTicTacToeState() {
        let solution = ValidTicTacToeState()
        for ((board), answer) in questions {
            XCTAssertEqual(solution.validTicTacToe(board), answer)
        }
    }
}
