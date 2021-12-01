import XCTest
@testable import LeetCode

final class ConsecutiveCharactersSpec: XCTestCase {

    fileprivate let questions: [((String), Int)] = [
        (("leetcode"), 2),
        (("abbcccddddeeeeedcba"), 5),
        (("triplepillooooow"), 5),
        (("hooraaaaaaaaaaay"), 11),
        (("tourist"), 1),
        (("j"), 1)
    ]

    func testConsecutiveCharacters() {
        let solution = ConsecutiveCharacters()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.maxPower(s), answer)
        }
    }
}
