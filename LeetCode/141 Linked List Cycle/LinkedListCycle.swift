//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: LinkedListCycle.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/9: Created by szwathub on 2021/12/9
//

class LinkedListCycle {
    func hasCycle(_ head: ListNode?) -> Bool {
        guard head != nil else {
            return false
        }

        var fast = head?.next
        var slow = head

        while slow !== fast {
            if fast == nil || fast?.next == nil {
                return false
            }

            slow = slow?.next
            fast = fast?.next?.next
        }

        return true
    }
}
