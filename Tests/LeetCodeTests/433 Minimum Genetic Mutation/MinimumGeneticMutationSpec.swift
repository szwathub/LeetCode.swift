import XCTest
@testable import LeetCode

final class MinimumGeneticMutationSpec: XCTestCase {

    fileprivate let questions: [((String, String, [String]), Int)] = [
        (("AACCGGTT", "AACCGGTA", ["AACCGGTA"]), 1),
        (("AACCGGTT", "AAACGGTA", ["AACCGGTA", "AACCGCTA", "AAACGGTA"]), 2),
        (("AAAAACCC", "AACCCCCC", ["AAAACCCC", "AAACCCCC", "AACCCCCC"]), 3)
    ]

    func testMinimumGeneticMutation() {
        let solution = MinimumGeneticMutation()
        for ((start, end, bank), answer) in questions {
            XCTAssertEqual(solution.minMutation(start, end, bank), answer)
        }
    }
}
