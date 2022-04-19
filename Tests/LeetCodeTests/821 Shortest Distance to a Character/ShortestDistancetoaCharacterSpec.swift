import XCTest
@testable import LeetCode

final class ShortestDistancetoaCharacterSpec: XCTestCase {

    fileprivate let questions: [((String, Character), [Int])] = [
        (("loveleetcode", "e"), [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0]),
        (("aaab", "b"), [3, 2, 1, 0])
    ]

    func testShortestDistancetoaCharacter() {
        let solution = ShortestDistancetoaCharacter()
        for ((s, c), answer) in questions {
            XCTAssertEqual(solution.shortestToChar(s, c), answer)
        }
    }
}
