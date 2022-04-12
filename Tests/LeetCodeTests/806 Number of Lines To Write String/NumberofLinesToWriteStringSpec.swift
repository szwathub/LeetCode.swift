import XCTest
@testable import LeetCode

final class NumberofLinesToWriteStringSpec: XCTestCase {

    fileprivate let questions: [(([Int], String), [Int])] = [
        (
            (
                [10, 10, 10, 10, 10, 10, 10,
                 10, 10, 10, 10, 10, 10, 10,
                 10, 10, 10, 10, 10, 10, 10,
                 10, 10, 10, 10, 10],
                "abcdefghijklmnopqrstuvwxyz"
            ),
            [3, 60]
        ),
        (
            (
                [4, 10, 10, 10, 10, 10, 10,
                 10, 10, 10, 10, 10, 10, 10,
                 10, 10, 10, 10, 10, 10, 10,
                 10, 10, 10, 10, 10],
                "bbbcccdddaaa"
            ),
            [2, 4]
        )
    ]

    func testNumberofLinesToWriteString() {
        let solution = NumberofLinesToWriteString()
        for ((widths, s), answer) in questions {
            XCTAssertEqual(solution.numberOfLines(widths, s), answer)
        }
    }
}
