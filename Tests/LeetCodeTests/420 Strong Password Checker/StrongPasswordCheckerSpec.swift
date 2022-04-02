import XCTest
@testable import LeetCode

final class StrongPasswordCheckerSpec: XCTestCase {

    fileprivate let questions: [((String), Int)] = [
        (("a"), 5),
        (("aA1"), 3),
        (("1337C0d3"), 0),
        (("ABABABABABABABABABAB1"), 2),
        (("bbaaaaaaaaaaaaaaacccccc"), 8),
        (("A1234567890aaabbbbccccc"), 4),
        (("A1234567890aaabbbbcccccccccc"), 9)
    ]

    func testStrongPasswordChecker() {
        let solution = StrongPasswordChecker()
        for ((password), answer) in questions {
            XCTAssertEqual(solution.strongPasswordChecker(password), answer)
        }
    }
}
