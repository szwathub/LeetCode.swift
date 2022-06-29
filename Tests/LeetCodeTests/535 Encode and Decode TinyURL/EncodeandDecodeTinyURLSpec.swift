import XCTest
@testable import LeetCode

final class EncodeandDecodeTinyURLSpec: XCTestCase {

    func testEncodeandDecodeTinyURL() {
        let solution = EncodeandDecodeTinyURL()
        _ = solution.encode("https://leetcode.com/problems/design-tinyurl")
        _ = solution.decode("http://tinyurl.com/893413675")
        _ = solution.encode("https://leetcode.com/problems/design-tinyurl")
    }
}
