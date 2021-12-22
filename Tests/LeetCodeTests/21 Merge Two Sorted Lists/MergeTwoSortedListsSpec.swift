//
//  
//
//  File name: .swift
//  Author:    Zhiwei Sun @szwathub
import XCTest
@testable import LeetCode
@testable import Structure

final class MergeTwoSortedListsSpec: XCTestCase {

    fileprivate let questions: [(([Int], [Int]), [Int])] = [
        (([1, 2, 4], [1, 3, 4]), [1, 1, 2, 3, 4, 4]),
        (([], []), []),
        (([], [0]), [0]),
        (([0], []), [0])
    ]

    func testMergeTwoSortedLists() {
        let solution = MergeTwoSortedLists()

        for ((l1, l2), answer) in questions {
            let node = solution.mergeTwoLists(SinglyLinkedList(l1).head,
                                              SinglyLinkedList(l2).head)

            XCTAssertTrue(node == SinglyLinkedList(answer).head)
        }
    }
}
