import XCTest
@testable import LeetCode

class ShuffleanArraySpec: XCTestCase {

    func testShuffleanArray() {
        let solution = ShuffleanArray([1, 2, 3])
        _  = solution.shuffle()
        XCTAssertEqual(solution.reset(), [1, 2, 3])
    }
}
