//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: RemoveLinkedListElements.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/23: Created by szwathub on 2021/12/23
//

import Structure

class RemoveLinkedListElements {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var node = head
        let root = ListNode(0)
        var prev = root
        while let currrent = node {
            if currrent.val != val {
                prev.next = currrent
                prev = currrent
            }

            node = currrent.next
            currrent.next = nil
        }

        return root.next
    }
}
