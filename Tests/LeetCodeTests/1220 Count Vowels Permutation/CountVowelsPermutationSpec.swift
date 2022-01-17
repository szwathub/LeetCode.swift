import XCTest
@testable import LeetCode

final class CountVowelsPermutationSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((1), 5),
        ((2), 10),
        ((5), 68)
    ]

    func testCountVowelsPermutation() {
        let solution = CountVowelsPermutation()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.countVowelPermutation(n), answer)
        }
    }
}
