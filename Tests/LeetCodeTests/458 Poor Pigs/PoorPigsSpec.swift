import XCTest
@testable import LeetCode

final class PoorPigsSpec: XCTestCase {

    fileprivate var questions = [((Int, Int, Int), Int)]()

    override func setUp() {
        questions = [
            ((1000, 15, 60), 5),
            ((4, 15, 15), 2),
            ((4, 15, 30), 2)
        ]
    }

    func testPoorPigsSpec() {
        let solution = PoorPigs()
        for (parameter, answer) in questions {
            let (buckets, minutesToDie, minutesToTest) = parameter

            XCTAssertEqual(solution.poorPigs(buckets, minutesToDie, minutesToTest), answer)
        }
    }
}
