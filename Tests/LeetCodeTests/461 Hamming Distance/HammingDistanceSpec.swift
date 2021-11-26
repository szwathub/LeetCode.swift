import XCTest
@testable import LeetCode

final class HammingDistanceSpec: XCTestCase {

    fileprivate let questions: [((Int, Int), Int)] = [
        ((1, 4), 2),
        ((3, 1), 1)
    ]

    func testHammingDistance() {
        let solution = HammingDistance()
        for ((x, y), answer) in questions {
            XCTAssertEqual(solution.hammingDistance(x, y), answer)
        }
    }
}
