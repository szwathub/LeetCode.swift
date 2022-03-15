import XCTest
@testable import LeetCode

final class GroupAnagramsSpec: XCTestCase {

    fileprivate let questions: [(([String]), [[String]])] = [
        ((["eat", "tea", "tan", "ate", "nat", "bat"]), [["bat"], ["tan", "nat"], ["eat", "tea", "ate"]]),
        (([""]), [[""]]),
        ((["a"]), [["a"]])
    ]

    func testGroupAnagrams() {
        let solution = GroupAnagrams()
        for ((strs), answer) in questions {
            XCTAssertEqual(solution.groupAnagrams(strs).sorted(by: { $0.count < $1.count }), answer)
        }
    }
}
