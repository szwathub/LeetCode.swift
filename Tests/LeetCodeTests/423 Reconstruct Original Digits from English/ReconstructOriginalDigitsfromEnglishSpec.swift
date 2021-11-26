import XCTest
@testable import LeetCode

final class ReconstructOriginalDigitsfromEnglishSpec: XCTestCase {

    fileprivate let questions: [((String), String)] = [
        (("owoztneoer"), "012"),
        (("fviefuro"), "45"),
        (("three"), "3")
    ]

    func testReconstructOriginalDigitsfromEnglish() {
        let solution = ReconstructOriginalDigitsfromEnglish()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.originalDigits(s), answer)
        }
    }
}
