//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: AddTwoNumbers.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/2/4: Created by szwathub on 2021/2/4
//

class AddTwoNumbers {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var head: ListNode?
        var tail: ListNode?

        var carry = 0
        var p = l1
        var q = l2
        while p != nil || q != nil {
            let sum = (p?.val ?? 0) + (q?.val ?? 0) + carry
            carry = sum / 10

            if head == nil {
                head = ListNode(sum % 10)
                tail = head
            } else {
                tail?.next = ListNode(sum % 10)
                tail = tail?.next
            }

            p = p?.next
            q = q?.next
        }

        if carry > 0 {
            tail?.next = ListNode(value: carry)
        }

        return head
    }
}
