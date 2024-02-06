import XCTest
@testable import LCP

final class NumsGameSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([3, 4, 5, 1, 6, 7]), [0, 0, 0, 5, 6, 7]),
        (([1, 2, 3, 4, 5]), [0, 0, 0, 0, 0]),
        (([1, 1, 1, 2, 3, 4]), [0, 1, 2, 3, 3, 3])
    ]

    func test() {
        let solution = NumsGame()
        for ((nums), answer) in questions {
            XCTAssertEqual(
                solution.numsGame(nums),
                answer
            )
        }
    }
}
