import XCTest
@testable import LeetCode

final class IntersectionofTwoArraysIISpec: XCTestCase {
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
            .init(parameter: .init(nums1: [1, 2, 2, 1], nums2: [2, 2]), answer: [2, 2]),
            .init(parameter: .init(nums1: [4, 9, 5], nums2: [9, 4, 9, 8, 4]), answer: [4, 9]),
            .init(parameter: .init(nums1: [1], nums2: [1]), answer: [1])
        ]
    }

    func testIntersectionofTwoArraysII() {
        let solution = IntersectionofTwoArraysII()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.intersect(parameter.nums1, parameter.nums2).sorted(), answer)
        }
    }
}
