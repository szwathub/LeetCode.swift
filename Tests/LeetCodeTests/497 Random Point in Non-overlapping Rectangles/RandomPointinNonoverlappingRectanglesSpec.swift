import XCTest
@testable import LeetCode

final class RandomPointinNonoverlappingRectanglesSpec: XCTestCase {

    func testRandomPointinNonoverlappingRectangles() {
        let solution = RandomPointinNonoverlappingRectangles([[-2, -2, 1, 1], [2, 2, 4, 6]])
        _ = solution.pick()
    }
}
