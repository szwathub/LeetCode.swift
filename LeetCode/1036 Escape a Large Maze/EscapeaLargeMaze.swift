//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: EscapeaLargeMaze.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/11: Created by szwathub on 2022/1/11
//

class EscapeaLargeMaze {

    enum Status {
        case blocked
        case valid
        case found
    }

    public struct Pair: Hashable {
        var x: Int
        var y: Int

        init(_ x: Int, _ y: Int) {
            self.x = x
            self.y = y
        }
    }

    let directions = [(0, 1), (0, -1), (1, 0), (-1, 0)]
    let BOUNDARY = 1000000

    func isEscapePossible(_ blocked: [[Int]], _ source: [Int], _ target: [Int]) -> Bool {
        guard blocked.count >= 2 else {
            return true
        }

        var map = Set<Pair>()
        for block in blocked {
            map.insert(Pair(block[0], block[1]))
        }

        let start = Pair(source[0], source[1])
        let end   = Pair(target[0], target[1])
        let status = check(map, start, end)
        switch status {
            case .blocked:
                return false
            case .valid:
                return check(map, end, start) != .blocked
            case .found:
                return true
        }
    }

    private func check(_ blocked: Set<Pair>, _ start: Pair, _ end: Pair) -> Status {
        var count = blocked.count * (blocked.count - 1) / 2;
        var queue = [Pair]()
        var visited = Set<Pair>()

        queue.append(start)
        visited.insert(start)

        while !queue.isEmpty && count > 0 {
            let pair = queue.removeFirst()

            for direction in directions {
                let new = Pair(pair.x + direction.0, pair.y + direction.1)
                guard new.x >= 0 && new.x < BOUNDARY && new.y >= 0 && new.y < BOUNDARY else {
                    continue
                }

                if !blocked.contains(new) && !visited.contains(new) {
                    if new == end {
                        return .found
                    }

                    count -= 1
                    queue.append(new)
                    visited.insert(new)
                }
            }
        }

        if count > 0 {
            return .blocked
        }

        return .valid
    }
}
