import XCTest
@testable import LeetCode

final class RandomFlipMatrixSpec: XCTestCase {

    func testRandomFlipMatrix() {
        let solution = RandomFlipMatrix(5, 4)

        _ = solution.flip()
        _ = solution.flip()
        _ = solution.flip()
        solution.reset()
    }
}
