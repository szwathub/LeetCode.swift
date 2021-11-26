import XCTest
@testable import LeetCode

final class PoorPigsSpec: XCTestCase {

    fileprivate let questions: [((Int, Int, Int), Int)] = [
        ((1000, 15, 60), 5),
        ((4, 15, 15), 2),
        ((4, 15, 30), 2)
    ]

    func testPoorPigs() {
        let solution = PoorPigs()
        for ((buckets, minutesToDie, minutesToTest), answer) in questions {
            XCTAssertEqual(solution.poorPigs(buckets, minutesToDie, minutesToTest), answer)
        }
    }
}
