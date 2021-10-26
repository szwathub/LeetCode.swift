import XCTest
@testable import LeetCode

final class NextGreaterElementISpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var nums1: [Int]
            var nums2: [Int]
        }

        var parameter: Parameter
        var answer: [Int]
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(nums1: [4, 1, 2], nums2: [1, 3, 4, 2]), answer: [-1, 3, -1]),
            .init(parameter: .init(nums1: [2, 4], nums2: [1, 2, 3, 4]), answer: [3, -1])
        ]
    }

    func testNextGreaterElementI() {
        let solution = NextGreaterElementI()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.nextGreaterElement(parameter.nums1, parameter.nums2), answer)
            XCTAssertEqual(solution.nextGreaterElementII(parameter.nums1, parameter.nums2), answer)
        }
    }
}
