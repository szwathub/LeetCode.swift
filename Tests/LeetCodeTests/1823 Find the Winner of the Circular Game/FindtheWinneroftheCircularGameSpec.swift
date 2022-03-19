import XCTest
@testable import LeetCode

final class FindtheWinneroftheCircularGameSpec: XCTestCase {

    fileprivate let questions: [((Int, Int), Int)] = [
        ((5, 2), 3),
        ((6, 5), 1)
    ]

    func testFindtheWinneroftheCircularGame() {
        let solution = FindtheWinneroftheCircularGame()
        for ((n, k), answer) in questions {
            XCTAssertEqual(solution.findTheWinner(n, k), answer)
        }
    }
}
