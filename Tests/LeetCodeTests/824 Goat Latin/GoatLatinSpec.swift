import XCTest
@testable import LeetCode

final class GoatLatinSpec: XCTestCase {

    fileprivate let questions: [((String), String)] = [
        (("I speak Goat Latin"), "Imaa peaksmaaa oatGmaaaa atinLmaaaaa")
    ]

    func testGoatLatin() {
        let solution = GoatLatin()
        for ((sentence), answer) in questions {
            XCTAssertEqual(solution.toGoatLatin(sentence), answer)
        }
    }
}
