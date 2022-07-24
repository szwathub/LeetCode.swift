import XCTest
@testable import LeetCode

final class DistanceBetweenBusStopsSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int, Int), Int)] = [
        (([1, 2, 3, 4], 0, 1), 1),
        (([1, 2, 3, 4], 0, 3), 4)
    ]

    func testDistanceBetweenBusStops() {
        let solution = DistanceBetweenBusStops()
        for ((distance, start, destination), answer) in questions {
            XCTAssertEqual(solution.distanceBetweenBusStops(distance,
                                                            start,
                                                            destination),
                           answer)
        }
    }
}
