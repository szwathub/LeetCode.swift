import XCTest
@testable import LeetCode

final class RepeatedDNASequencesSpec: XCTestCase {

    fileprivate let questions: [((String), [String])] = [
        (("AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT"), ["AAAAACCCCC", "CCCCCAAAAA"]),
        (("AAAAAAAAAAAAA"), ["AAAAAAAAAA"]),
        (("AAAAAA"), [])
    ]

    func testRepeatedDNASequences() {
        let solution = RepeatedDNASequences()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.findRepeatedDnaSequences(s), answer)
        }
    }
}
