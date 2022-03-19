//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LinkedListCycleII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/19: Created by szwathub on 2022/3/19
//

import Structure

class LinkedListCycleII {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        var slow = head, fast = head

        while fast != nil {
            slow = slow?.next
            if fast?.next == nil {
                return nil
            }
            fast = fast?.next?.next
            if fast === slow {
                var answer = head
                while answer !== slow {
                    answer = answer?.next
                    slow   = slow?.next
                }

                return answer
            }
        }

        return nil
    }
}
