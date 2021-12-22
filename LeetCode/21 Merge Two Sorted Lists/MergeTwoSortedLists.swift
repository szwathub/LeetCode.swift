//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: MergeTwoSortedLists.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/22: Created by szwathub on 2021/12/22
//

import Structure

class MergeTwoSortedLists {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let root = ListNode(0)
        var current: ListNode? = root
        var left = l1
        var right = l2

        while left != nil || right != nil {
            if left == nil {
                current?.next = right
                break
            }
            if right == nil {
                current?.next = left
                break
            }

            if left!.val > right!.val {
                current?.next = right
                current = right
                right = right?.next
            } else {
                current?.next = left
                current = left
                left = left?.next
            }
        }

        return root.next
    }
}
