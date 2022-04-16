import XCTest
@testable import LeetCode

final class MiniParserSpec: XCTestCase {

    fileprivate let questions: [(String)] = [
        ("[123,[456,[789]]]"),
        ("324")
    ]

    func testMiniParser() {
        let solution = MiniParser()
        for s in questions {
            _ = solution.deserialize(s)
        }
    }
}
