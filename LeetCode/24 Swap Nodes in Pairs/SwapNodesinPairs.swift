//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SwapNodesinPairs.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/16: Created by szwathub on 2022/3/16
//

import Structure

class SwapNodesinPairs {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        let root = ListNode(0)
        root.next = head
        var prev: ListNode? = root

        while prev?.next != nil && prev?.next?.next != nil {
            let first = prev?.next
            let second = prev?.next?.next

            prev?.next = second
            first?.next = second?.next
            second?.next = first

            prev = first
        }

        return root.next
    }
}
