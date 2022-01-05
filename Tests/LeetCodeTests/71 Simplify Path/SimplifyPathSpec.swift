import XCTest
@testable import LeetCode

final class SimplifyPathSpec: XCTestCase {

    fileprivate let questions: [((String), String)] = [
        (("/home/"), "/home"),
        (("/../"), "/"),
        (("/home//foo/"), "/home/foo"),
        (("/a/./b/../../c/"), "/c")
    ]

    func testSimplifyPath() {
        let solution = SimplifyPath()
        for ((path), answer) in questions {
            XCTAssertEqual(solution.simplifyPath(path), answer)
        }
    }
}
