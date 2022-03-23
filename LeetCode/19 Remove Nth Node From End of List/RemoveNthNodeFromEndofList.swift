//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RemoveNthNodeFromEndofList.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/23: Created by szwathub on 2022/3/23
//

import Structure

class RemoveNthNodeFromEndofList {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let dummy = ListNode(0)
        dummy.next = head

        let length = getLength(head)
        var current: ListNode? = dummy

        for _ in 1..<length - n + 1 {
            current = current?.next
        }
        current?.next = current?.next?.next

        return dummy.next
    }

    private func getLength(_ head: ListNode?) -> Int {
        var length = 0
        var current = head

        while let node = current {
            length += 1
            current = node.next
        }

        return length
    }
}
