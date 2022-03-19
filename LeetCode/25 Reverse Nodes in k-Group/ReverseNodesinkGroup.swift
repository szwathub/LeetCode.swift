//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ReverseNodesinkGroup.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/19: Created by szwathub on 2022/3/19
//

class ReverseNodesinkGroup {
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        let dummy = ListNode(0)
        dummy.next = head

        var pre: ListNode? = dummy
        var end: ListNode? = dummy

        while end?.next != nil {
            for _ in 1 ... k {
                end = end?.next
            }

            if end == nil {
                break
            }

            let start = pre?.next
            let next = end?.next
            end?.next = nil

            pre?.next = reverse(start)

            start?.next = next

            pre = start
            end = start
        }

        return dummy.next
    }

    private func reverse(_ head: ListNode?) -> ListNode? {
        var prev: ListNode?
        var currnet = head
        while currnet != nil {
            let next = currnet?.next
            currnet?.next = prev
            prev = currnet
            currnet = next
        }

        return prev
    }
}
