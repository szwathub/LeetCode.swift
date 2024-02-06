import XCTest
@testable import LCP

final class MagicTowerSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([100, 100, 100, -250, -60, -140, -50, -50, 100, 150]), 1),
        (([-200, -300, 400, 0]), -1)
    ]

    func test() {
        let solution = MagicTower()
        for ((nums), answer) in questions {
            XCTAssertEqual(
                solution.magicTower(nums),
                answer
            )
        }
    }
}
