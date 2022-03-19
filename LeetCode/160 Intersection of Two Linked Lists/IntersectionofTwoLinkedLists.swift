//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: IntersectionofTwoLinkedLists.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/19: Created by szwathub on 2022/3/19
//

import Structure

class IntersectionofTwoLinkedLists {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        guard let headA = headA, let headB = headB else {
            return nil
        }

        var pA: ListNode? = headA, pB: ListNode? = headB
        while pA !== pB {
            pA = pA == nil ? headB : pA?.next
            pB = pB == nil ? headA : pB?.next
        }

        return pA
    }
}
