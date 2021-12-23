//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: ReverseLinkedList.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/23: Created by szwathub on 2021/12/23
//

import Structure

class ReverseLinkedList {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var current: ListNode? = head
        var pre: ListNode?

        while current != nil {
            let next = current?.next

            current?.next = pre
            pre = current
            current = next
        }

        return pre
    }

    func reverseListI(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }

        let new = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil

        return new
    }
}
