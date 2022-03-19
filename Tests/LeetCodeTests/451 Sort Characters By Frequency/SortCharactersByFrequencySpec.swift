import XCTest
@testable import LeetCode

final class SortCharactersByFrequencySpec: XCTestCase {

    fileprivate let questions: [((String), [String])] = [
        (("tree"), ["eert"]),
        (("cccaaa"), ["aaaccc", "cccaaa"]),
        (("Aabb"), ["bbaA", "bbAa"])
    ]

    func testSortCharactersByFrequency() {
        let solution = SortCharactersByFrequency()
        for ((s), answer) in questions {
            XCTAssertTrue(answer.contains(solution.frequencySort(s)))
        }
    }
}
