import XCTest
@testable import LeetCode

final class PermutationsSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [[Int]])] = [
        (
            ([1, 2, 3]),
            [
                [1, 2, 3],
                [1, 3, 2],
                [2, 1, 3],
                [2, 3, 1],
                [3, 1, 2],
                [3, 2, 1]
            ]
        ),
        (
            ([0, 1]),
            [
                [0, 1],
                [1, 0]
            ]
        ),
        (([1]), [[1]])
    ]

    func testPermutations() {
        let solution = Permutations()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.permute(nums), answer)
        }
    }
}
