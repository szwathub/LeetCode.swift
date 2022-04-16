import XCTest
@testable import LeetCode

final class LargestPalindromeProductSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((2), 987),
        ((1), 9)
    ]

    func testLargestPalindromeProduct() {
        let solution = LargestPalindromeProduct()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.largestPalindrome(n), answer)
        }
    }
}
