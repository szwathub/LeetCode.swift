import XCTest
@testable import LeetCode
@testable import Structure

final class NaryTreePostorderTraversalSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), [Int])] = [
        (([]), []),
        (
            (
                [1, nil, 3, 2, 4, nil, 5, 6]
            ),
            [5, 6, 3, 2, 4, 1]
        ),
        (
            (
                [1, nil, 2, 3, 4, 5, nil, nil, 6, 7, nil,
                 8, nil, 9, 10, nil, nil, 11, nil, 12,
                 nil, 13, nil, nil, 14]
            ),
            [2, 6, 14, 11, 7, 3, 12, 8, 4, 13, 9, 10, 5, 1]
        )
    ]

    func test() {
        let solution = NaryTreePostorderTraversal()
        for ((elements), answer) in questions {
            XCTAssertEqual(solution.postorderII(Tree(elements)), answer)
        }
    }
}
