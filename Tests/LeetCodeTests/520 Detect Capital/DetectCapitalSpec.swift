import XCTest
@testable import LeetCode

final class DetectCapitalSpec: XCTestCase {

    fileprivate let questions: [((String), Bool)] = [
        (("USA"), true),
        (("FlaG"), false),
        (("aBcd"), false),
        (("aaaBasd"), false)
    ]

    func testDetectCapital() {
        let solution = DetectCapital()
        for ((word), answer) in questions {
            XCTAssertEqual(solution.detectCapitalUse(word), answer)
        }
    }
}
