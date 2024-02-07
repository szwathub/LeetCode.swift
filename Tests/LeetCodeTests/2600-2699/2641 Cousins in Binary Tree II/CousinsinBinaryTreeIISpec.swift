import XCTest
@testable import LeetCode
@testable import Structure

class CousinsinBinaryTreeIISpec: XCTestCase {

    fileprivate let questions: [(([Int?]), [Int?])] = [
        (([5, 4, 9, 1, 10, nil, 7]), [0, 0, 0, 7, 7, nil, 11]),
        (([3, 1, 2]), [0, 0, 0])
    ]

    func test() {
        let solution = CousinsinBinaryTreeII()
        for ((elements), answer) in questions {
            let root = BinaryTree(elements)
            let ans = BinaryTree(answer)
            XCTAssertEqual(solution.replaceValueInTree(root), ans)
        }
    }
}
