import XCTest
@testable import LeetCode

final class MaximizetheConfusionofanExamSpec: XCTestCase {

    fileprivate let questions: [((String, Int), Int)] = [
        (("TTFF", 2), 4),
        (("TFFT", 1), 3),
        (("TTFTTFTT", 1), 5)
    ]

    func testMaximizetheConfusionofanExam() {
        let solution = MaximizetheConfusionofanExam()
        for ((answerKey, k), answer) in questions {
            XCTAssertEqual(solution.maxConsecutiveAnswers(answerKey, k), answer)
        }
    }
}
