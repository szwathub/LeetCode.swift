import XCTest
@testable import LeetCode

final class ImageSmootherSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), [[Int]])] = [
        (([[1, 1, 1], [1, 0, 1], [1, 1, 1]]), [[0, 0, 0], [0, 0, 0], [0, 0, 0]]),
        (([
            [100, 200, 100],
            [200, 50, 200],
            [100, 200, 100]
        ]),
         [
            [137, 141, 137],
            [141, 138, 141],
            [137, 141, 137]
         ])
    ]

    func testImageSmoother() {
        let solution = ImageSmoother()
        for ((img), answer) in questions {
            XCTAssertEqual(solution.imageSmoother(img), answer)
        }
    }
}
