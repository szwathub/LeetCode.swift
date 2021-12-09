import XCTest
@testable import LeetCode
@testable import Structure

final class LinkedListCycleSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Bool)] = [
        (([3, 2, 0, -4], 1), true),
        (([1, 2], 0), true),
        (([1, 2], -1), false),
        (([], -1), false)
    ]

    func testLinkedListCycle() {
        let solution = LinkedListCycle()
        for ((head, pos), answer) in questions {
            let tree = SinglyLinkedList<Int>(head)
            if pos >= 0 {
                if let find = tree.head?.firstNode(of: head[pos]) {
                    tree.tail?.next = find
                }
            }

            XCTAssertEqual(solution.hasCycle(tree.head), answer)
        }
    }
}
