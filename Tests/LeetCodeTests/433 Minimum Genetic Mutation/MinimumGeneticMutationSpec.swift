import XCTest
@testable import LeetCode

final class MinimumGeneticMutationSpec: XCTestCase {

    fileprivate let questions: [((String, String, [String]), Int)] = [
        (("AACCGGTT", "AACCGGTT", ["AACCGGTA"]), 0),
        (("AACCGGTT", "AACCGGTA", ["AACCGGTA"]), 1),
        (("AACCGGTT", "AACCGGTA", ["AACCGGTT"]), -1),
        (("AACCGGTT", "AAACGGTA", ["AACCGGTA", "AACCGCTA", "AAACGGTA"]), 2),
        (("AACCGGTT", "AAACGGGA", ["AAACGGGA"]), -1),
        (("AAAAACCC", "AACCCCCC", ["AAAACCCC", "AAACCCCC", "AACCCCCC"]), 3)
    ]

    func testMinimumGeneticMutation() {
        let solution = MinimumGeneticMutation()
        for ((start, end, bank), answer) in questions {
            XCTAssertEqual(solution.minMutation(start, end, bank), answer)
        }
    }
}
