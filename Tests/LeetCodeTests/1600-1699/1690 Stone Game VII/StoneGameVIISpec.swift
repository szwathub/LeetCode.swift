import XCTest
@testable import LeetCode

final class StoneGameVIISpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (
            (
                [5, 3, 1, 4, 2]
            ),
            6
        ),
        (
            (
                [7, 90, 5, 1, 100, 10, 10, 2]
            ),
            122
        ),
        (
            (
                [792, 195, 697, 271, 743, 51, 836, 322, 135, 550, 399, 182, 988, 25,
                 395, 254, 480, 931, 513, 772, 798, 102, 110, 915, 794, 330, 597, 220,
                 789, 462
                ]
            ),
            9066
        )
    ]

    func test() {
        let solution = StoneGameVII()
        for ((stones), answer) in questions {
            XCTAssertEqual(
                solution.stoneGameVII(stones),
                answer
            )
        }
    }
}
