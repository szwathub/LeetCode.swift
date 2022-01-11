import XCTest
@testable import LeetCode

final class ProductofArrayExceptSelfSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([1, 2, 3, 4]), [24, 12, 8, 6]),
        (([-1, 1, 0, -3, 3]), [0, 0, 9, 0, 0])
    ]

    func testProductofArrayExceptSelf() {
        let solution = ProductofArrayExceptSelf()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.productExceptSelf(nums), answer)
        }
    }
}
