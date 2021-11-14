import XCTest
@testable import LeetCode

final class MapSumPairsSpec: XCTestCase {
    override func setUp() {

    }

    func testMapSumPairs() {
        let solution = MapSum()
        solution.insert("apple", 3)
        XCTAssertEqual(solution.sum("ap"), 3)
        solution.insert("app", 2)
        XCTAssertEqual(solution.sum("ap"), 5)
    }
}
