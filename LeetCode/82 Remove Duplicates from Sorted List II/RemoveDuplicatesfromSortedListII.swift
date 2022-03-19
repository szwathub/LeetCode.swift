//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RemoveDuplicatesfromSortedListII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/19: Created by szwathub on 2022/3/19
//

import Structure

class RemoveDuplicatesfromSortedListII {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard let head = head else {
            return nil
        }

        let dummy = ListNode(0)
        dummy.next = head

        var current: ListNode? = dummy
        while current?.next != nil && current?.next?.next != nil {
            if current?.next?.val == current?.next?.next?.val {
                let x = current?.next?.val
                while current?.next != nil && current?.next?.val == x {
                    current?.next = current?.next?.next
                }
            } else {
                current = current?.next
            }
        }

        return dummy.next
    }
}
