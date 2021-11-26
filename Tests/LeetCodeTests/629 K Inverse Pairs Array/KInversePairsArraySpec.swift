import XCTest
@testable import LeetCode

final class KInversePairsArraySpec: XCTestCase {

    fileprivate let questions: [((Int, Int), Int)] = [
        ((3, 0), 1),
        ((3, 1), 2),
        ((1, 0), 1),
        ((9, 6), 1230)
    ]

    func testKInversePairsArray() {
        let solution = KInversePairsArray()
        for ((n, k), answer) in questions {
            XCTAssertEqual(solution.kInversePairs(n, k), answer)
        }
    }
}
