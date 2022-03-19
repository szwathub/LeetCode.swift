//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ReorderList.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/19: Created by szwathub on 2022/3/19
//

import Structure

class ReorderList {
    func reorderList(_ head: ListNode?) {
        guard let head = head else {
            return
        }

        var list = [ListNode]()
        var node: ListNode? = head

        while let curent = node {
            list.append(curent)
            node = curent.next
        }

        var i = 0, j = list.count - 1
        while i < j {
            list[i].next = list[j]
            i += 1
            if i == j {
                break
            }
            list[j].next = list[i]
            j -= 1
        }

        list[i].next = nil
    }
}
