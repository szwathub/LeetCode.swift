import XCTest
@testable import LeetCode

final class ArrayofDoubledPairsSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Bool)] = [
        (([3, 1, 3, 6]), false),
        (([2, 1, 2, 6]), false),
        (([4, -2, 2, -4]), true)
    ]

    func testArrayofDoubledPairs() {
        let solution = ArrayofDoubledPairs()
        for ((arr), answer) in questions {
            XCTAssertEqual(solution.canReorderDoubled(arr), answer)
        }
    }
}
