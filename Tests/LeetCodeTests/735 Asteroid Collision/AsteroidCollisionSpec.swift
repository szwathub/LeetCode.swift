import XCTest
@testable import LeetCode

final class AsteroidCollisionSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([5, 10, -5]), [5, 10]),
        (([8, -8]), []),
        (([10, 2, -5]), [10])
    ]

    func testAsteroidCollision() {
        let solution = AsteroidCollision()
        for ((asteroids), answer) in questions {
            XCTAssertEqual(solution.asteroidCollision(asteroids), answer)
        }
    }
}
