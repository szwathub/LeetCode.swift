import XCTest
@testable import LeetCode
@testable import Structure

final class DeleteNodeinaLinkedListSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), [Int])] = [
        (([4, 5, 1, 9], 5), [4, 1, 9]),
        (([4, 5, 1, 9], 1), [4, 5, 9]),
        (([1, 2, 3, 4], 3), [1, 2, 4]),
        (([0, 1], 0), [1]),
        (([-3, 5, -99], -3), [5, -99])
    ]

    func testDeleteNodeinaLinkedList() {
        let solution = DeleteNodeinaLinkedList()
        for ((head, node), answer) in questions {
            let list = SinglyLinkedList(head)
            let find = list.head?.firstNode(of: node)
            solution.deleteNode(find)

            XCTAssertTrue(list.head == SinglyLinkedList(answer).head)
        }
    }
}
