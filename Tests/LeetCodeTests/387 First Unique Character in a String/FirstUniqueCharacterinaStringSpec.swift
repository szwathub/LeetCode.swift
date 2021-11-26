import XCTest
@testable import LeetCode

final class FirstUniqueCharacterinaStringSpec: XCTestCase {

    fileprivate let questions: [((String), Int)] = [
        (("leetcode"), 0),
        (("loveleetcode"), 2),
        (("codecode"), -1)
    ]

    func testFirstUniqueCharacterinaStringSpec() {
        let solution = FirstUniqueCharacterinaString()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.firstUniqChar(s), answer)
        }
    }
}
