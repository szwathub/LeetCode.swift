import XCTest
@testable import LeetCode

final class RandomFlipMatrixSpec: XCTestCase {

    func testRandomFlipMatrix() {
        let solution = RandomFlipMatrix(5, 4)

        let _ = solution.flip()
        let _ = solution.flip()
        let _ = solution.flip()
        solution.reset()
    }
}
