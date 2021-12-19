import XCTest
@testable import LeetCode

final class FindtheTownJudgeSpec: XCTestCase {

    fileprivate let questions: [((Int, [[Int]]), Int)] = [
        ((2, [[1, 2]]), 2),
        ((3, [[1, 3], [2, 3]]), 3),
        ((3, [[1, 3], [2, 3], [3, 1]]), -1),
        ((4, [[1, 3], [1, 4], [2, 3], [2, 4], [4, 3]]), 3)
    ]

    func testFindtheTownJudge() {
        let solution = FindtheTownJudge()
        for ((n, trust), answer) in questions {
            XCTAssertEqual(solution.findJudge(n, trust), answer)
        }
    }
}
