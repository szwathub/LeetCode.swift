import XCTest
@testable import LeetCode

final class ZigZagConversionSpec: XCTestCase {

    fileprivate let questions: [((String, Int), String)] = [
        (("PAYPALISHIRING", 3), "PAHNAPLSIIGYIR"),
        (("PAYPALISHIRING", 4), "PINALSIGYAHRPI"),
        (("A", 1), "A")
    ]

    func testZigZagConversion() {
        let solution = ZigZagConversion()
        for ((s, numRows), answer) in questions {
            XCTAssertEqual(solution.convert(s, numRows), answer)
        }
    }
}
