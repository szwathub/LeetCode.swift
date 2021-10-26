import XCTest
@testable import LeetCode

final class MergeSortedArraySpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var nums1: [Int]
            var m: Int
            var nums2: [Int]
            var n: Int
        }

        var parameter: Parameter
        var answer: [Int]
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(nums1: [1, 2, 3, 0, 0, 0], m: 3, nums2: [2, 5, 6], n: 3),
                     answer: [1, 2, 2, 3, 5, 6]),
            .init(parameter: .init(nums1: [1], m: 1, nums2: [], n: 0),
                     answer: [1]),
            .init(parameter: .init(nums1: [0], m: 0, nums2: [1], n: 1),
                     answer: [1]),
            .init(parameter: .init(nums1: [4, 0, 0, 0, 0, 0], m: 1, nums2: [1, 2, 3, 5, 6], n: 5),
                     answer: [1, 2, 3, 4, 5, 6]),
            .init(parameter: .init(nums1: [1, 2, 4, 5, 6, 0], m: 5, nums2: [3], n: 1),
                     answer: [1, 2, 3, 4, 5, 6]),
            .init(parameter: .init(nums1: [4, 5, 6, 0, 0, 0], m: 3, nums2: [1, 2, 3], n: 3),
                     answer: [1, 2, 3, 4, 5, 6])
        ]
    }

    func testMergeSortedArray() {
        let solution = MergeSortedArray()
        for question in questions {
            var parameter = question.parameter
            let answer = question.answer

            solution.merge(&parameter.nums1, parameter.m, parameter.nums2, parameter.n)
            XCTAssertEqual(parameter.nums1, answer)
        }
    }
}
