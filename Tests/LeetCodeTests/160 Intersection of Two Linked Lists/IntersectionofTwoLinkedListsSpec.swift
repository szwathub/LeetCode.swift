import XCTest
@testable import LeetCode
@testable import Structure

final class IntersectionofTwoLinkedListsSpec: XCTestCase {

    fileprivate let questions: [((Int, [Int], [Int], Int, Int), Int)] = [
        ((0, [2, 6, 4], [1, 5], 3, 2), 0),
        ((0, [2, 6, 4], [], 3, 2), 0)
    ]

    func testIntersectionofTwoLinkedLists() {
        let solution = IntersectionofTwoLinkedLists()
        for ((intersectVal, listA, listB, _, _), _) in questions where intersectVal == 0 {
            XCTAssertNil(solution.getIntersectionNode(SinglyLinkedList(listA).head,
                                                       SinglyLinkedList(listB).head))
        }
    }
}
