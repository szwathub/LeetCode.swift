//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: RemoveDuplicatesfromSortedList.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/24: Created by szwathub on 2021/12/24
//

import Structure

class RemoveDuplicatesfromSortedList {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var current = head
        while current?.next != nil {
            if current?.val == current?.next?.val {
                current?.next = current?.next?.next
            } else {
                current = current?.next
            }
        }

        return head
    }
}
