import XCTest
@testable import LeetCode

final class LongestAbsoluteFilePathSpec: XCTestCase {

    fileprivate let questions: [((String), Int)] = [
        (("dir\n\tsubdir1\n\tsubdir2\n\t\tfile.ext"), 20),
        (("dir\n\tsubdir1\n\t\tfile1.ext\n\t\tsubsubdir1\n\tsubdir2\n\t\tsubsubdir2\n\t\t\tfile2.ext"), 32),
        (("a"), 0)
    ]

    func testLongestAbsoluteFilePath() {
        let solution = LongestAbsoluteFilePath()
        for ((input), answer) in questions {
            XCTAssertEqual(solution.lengthLongestPath(input), answer)
        }
    }
}
