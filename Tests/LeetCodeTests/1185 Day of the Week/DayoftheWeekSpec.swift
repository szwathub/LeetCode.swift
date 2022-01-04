import XCTest
@testable import LeetCode

final class DayoftheWeekSpec: XCTestCase {

    fileprivate let questions: [((Int, Int, Int), String)] = [
        ((31, 8, 2019), "Saturday"),
        ((18, 7, 1999), "Sunday"),
        ((15, 8, 1993), "Sunday"),
        ((29, 2, 2016), "Monday")
    ]

    func testDayoftheWeek() {
        let solution = DayoftheWeek()
        for ((day, month, year), answer) in questions {
            XCTAssertEqual(solution.dayOfTheWeek(day, month, year), answer)
        }
    }
}
