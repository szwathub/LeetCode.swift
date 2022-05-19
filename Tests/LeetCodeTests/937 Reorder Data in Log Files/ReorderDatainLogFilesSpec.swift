import XCTest
@testable import LeetCode

final class ReorderDatainLogFilesSpec: XCTestCase {

    fileprivate let questions: [(([String]), [String])] = [
        (
            (["dig1 8 1 5 1", "let1 art can", "dig2 3 6", "let2 own kit dig", "let3 art zero"]),
            ["let1 art can", "let3 art zero", "let2 own kit dig", "dig1 8 1 5 1", "dig2 3 6"]
        ),
        (
            (["a1 9 2 3 1", "g1 act car", "zo4 4 7", "ab1 off key dog", "a8 act zoo"]),
            ["g1 act car", "a8 act zoo", "ab1 off key dog", "a1 9 2 3 1", "zo4 4 7"]
        ),
        (
            (["a1 9 2 3 1", "g1 act car", "zo4 4 7", "ab1 off key dog", "a8 act zoo", "a2 act car"]),
            ["a2 act car", "g1 act car", "a8 act zoo", "ab1 off key dog", "a1 9 2 3 1", "zo4 4 7"]
        )
    ]

    func testReorderDatainLogFiles() {
        let solution = ReorderDatainLogFiles()
        for ((logs), answer) in questions {
            XCTAssertEqual(solution.reorderLogFiles(logs), answer)
        }
    }
}
