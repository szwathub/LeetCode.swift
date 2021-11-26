import XCTest
@testable import LeetCode

final class ValidAnagramSpec: XCTestCase {

    fileprivate let questions: [((String, String), Bool)] = [
        (("anagram", "nagaram"), true),
        (("rat", "car"), false),
        (("anagram", "car"), false)
    ]

    func testValidAnagram() {
        let solution = ValidAnagram()
        for ((s, t), answer) in questions {
            XCTAssertEqual(solution.isAnagram(s, t), answer)
        }
    }
}
