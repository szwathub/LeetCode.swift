import XCTest
@testable import LeetCode

final class ReverseWordsinaStringIIISpec: XCTestCase {

    fileprivate let questions: [((String), String)] = [
        (("Let's take LeetCode contest"), "s'teL ekat edoCteeL tsetnoc"),
        (("God Ding"), "doG gniD")
    ]

    func testReverseWordsinaStringIII() {
        let solution = ReverseWordsinaStringIII()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.reverseWords(s), answer)
        }
    }
}
