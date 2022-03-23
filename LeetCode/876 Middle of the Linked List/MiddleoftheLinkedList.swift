//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MiddleoftheLinkedList.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/23: Created by szwathub on 2022/3/23
//

import Structure

class MiddleoftheLinkedList {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head

        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        return slow
    }
}
