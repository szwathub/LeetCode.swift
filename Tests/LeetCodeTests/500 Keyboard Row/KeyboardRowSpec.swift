import XCTest
@testable import LeetCode

final class KeyboardRowSpec: XCTestCase {

    fileprivate let questions: [(([String]), [String])] = [
        ((["Hello", "Alaska", "Dad", "Peace"]), ["Alaska", "Dad"]),
        ((["omk"]), []),
        ((["adsdf", "sfd"]), ["adsdf", "sfd"]),
        ((["Aasdfghjkl", "Qwertyuiop", "zZxcvbnm"]), ["Aasdfghjkl", "Qwertyuiop", "zZxcvbnm"])
    ]

    func testKeyboardRow() {
        let solution = KeyboardRow()
        for ((words), answer) in questions {
            XCTAssertEqual(solution.findWords(words), answer)
        }
    }
}
