import XCTest
@testable import LeetCode

final class CourseScheduleIIISpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), Int)] = [
        (([[100, 200], [200, 1300], [1000, 1250], [2000, 3200]]), 3),
        (([[1, 2]]), 1),
        (([[3, 2], [4, 3]]), 0),
        (([[1, 2], [2, 3]]), 2),
        (([[5, 5], [4, 6], [2, 6]]), 2)
    ]

    func testCourseScheduleIII() {
        let solution = CourseScheduleIII()
        for ((courses), answer) in questions {
            XCTAssertEqual(solution.scheduleCourse(courses), answer)
        }
    }
}
