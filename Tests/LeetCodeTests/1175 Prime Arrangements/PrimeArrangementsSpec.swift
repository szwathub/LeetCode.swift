import XCTest
@testable import LeetCode

final class PrimeArrangementsSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((5), 12),
        ((100), 682289015)
    ]

    func testPrimeArrangements() {
        let solution = PrimeArrangements()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.numPrimeArrangements(n), answer)
        }
    }
}
