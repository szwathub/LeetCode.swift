//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: KeysandRooms.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/17: Created by szwathub on 2022/3/17
//

class KeysandRooms {
    func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
        var visited = Set<Int>()
        var keys = [Int]()

        visited.insert(0)
        keys.append(contentsOf: rooms[0])

        while !keys.isEmpty {
            if visited.count == rooms.count {
                return true
            }

            let key = keys.removeLast()
            if !visited.contains(key) {
                keys.append(contentsOf: rooms[key])
                visited.insert(key)
            }
        }

        return visited.count == rooms.count
    }
}
