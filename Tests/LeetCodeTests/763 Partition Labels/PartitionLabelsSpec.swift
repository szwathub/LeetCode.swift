import XCTest
@testable import LeetCode

final class PartitionLabelsSpec: XCTestCase {

    fileprivate let questions: [((String), [Int])] = [
        (("ababcbacadefegdehijhklij"), [9, 7, 8]),
        (("eccbbbbdec"), [10])
    ]

    func testPartitionLabels() {
        let solution = PartitionLabels()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.partitionLabels(s), answer)
        }
    }
}
