import XCTest
@testable import LeetCode

final class StickerstoSpellWordSpec: XCTestCase {

    fileprivate let questions: [(([String], String), Int)] = [
        ((["with", "example", "science"], "thehat"), 3),
        ((["notice", "possible"], "basicbasic"), -1)
    ]

    func testStickerstoSpellWord() {
        let solution = StickerstoSpellWord()
        for ((stickers, target), answer) in questions {
            XCTAssertEqual(solution.minStickers(stickers, target), answer)
        }
    }
}
