import XCTest
@testable import LeetCode
@testable import Structure

final class AddTwoNumbersSpec: XCTestCase {

    fileprivate let questions: [(([Int], [Int]), [Int])] = [
        (([], []), []),
        (([1], [1]), [2]),
        (([1, 2, 3, 4], [1, 2, 3, 4]), [2, 4, 6, 8]),
        (([1, 2, 3, 4, 5], [1, 2, 3, 4, 5]), [2, 4, 6, 8, 0, 1]),
        (([1], [9, 9, 9, 9, 9]), [0, 0, 0, 0, 0, 1]),
        (([9, 9, 9, 9, 9], [1]), [0, 0, 0, 0, 0, 1]),
        (([2, 4, 3], [5, 6, 4]), [7, 0, 8]),
        (([1, 8, 3], [7, 1]), [8, 9, 3])
    ]

    func testAddTwoNumbers() {
        let solution = AddTwoNumbers()
        for ((l1, l2), answer) in questions {
            let node = solution.addTwoNumbers(SinglyLinkedList(l1).head,
                                              SinglyLinkedList(l2).head)

            XCTAssertTrue(node == SinglyLinkedList(answer).head)
        }
    }
}
