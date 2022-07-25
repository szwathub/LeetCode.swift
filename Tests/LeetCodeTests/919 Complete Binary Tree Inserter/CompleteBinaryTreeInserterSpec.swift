import XCTest
@testable import LeetCode
@testable import Structure

final class CompleteBinaryTreeInserterSpec: XCTestCase {

    func testCompleteBinaryTreeInserter() {
        let solution = CBTInserter(BinaryTree([1, 2]).root)
        XCTAssertEqual(solution.insert(3), 1)
        XCTAssertEqual(solution.insert(4), 2)
        XCTAssertEqual(solution.get_root(), BinaryTree([1, 2, 3, 4]).root)
    }
}
