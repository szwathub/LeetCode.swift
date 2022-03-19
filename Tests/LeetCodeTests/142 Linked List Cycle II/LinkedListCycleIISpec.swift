import XCTest
@testable import LeetCode
@testable import Structure

final class LinkedListCycleIISpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Int)] = [
        (([3, 2, 0, -4], 1), 2),
        (([1, 2], 0), 1),
        (([1], -1), 0),
        (([], -1), 0)
    ]

    func testLinkedListCycleII() {
        let solution = LinkedListCycleII()
        for ((head, pos), answer) in questions {
            let tree = SinglyLinkedList<Int>(head)
            if pos >= 0 {
                if let find = tree.head?.firstNode(of: head[pos]) {
                    tree.tail?.next = find
                }
                XCTAssertEqual(solution.detectCycle(tree.head)?.val, answer)
            } else {
                XCTAssertNil(solution.detectCycle(tree.head))
            }
        }
    }
}
