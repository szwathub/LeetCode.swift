//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: DeleteNodeinaLinkedList.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/2: Created by szwathub on 2021/11/2
//

class DeleteNodeinaLinkedList {
    func deleteNode(_ node: ListNode?) {
        if let next = node?.next {
            node?.val = next.val
            node?.next = next.next
        }
    }
}
