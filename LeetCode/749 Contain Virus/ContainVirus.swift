//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ContainVirus.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/335
//  History:
//      2022/7/18: Created by szwathub on 2022/7/18
//

class ContainVirus {

    var grid = [[Int]]()
    var n = 0
    var m = 0
    var visited = [[Bool]]()

    private let directions = [(0, 1), (0, -1), (1, 0), (-1, 0)]

    func containVirus(_ isInfected: [[Int]]) -> Int {
        grid = isInfected
        n = grid.count
        m = grid[0].count

        var ans = 0
        while true {
            let cnt = getCnt()
            if cnt == 0 {
                break
            }
            ans += cnt
        }

        return ans
    }

    private func getCnt() -> Int {
        var max = 0, ans = 0
        var l1 = [Set<Int>](), l2 = [Set<Int>]()
        visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)

        for i in 0..<n {
            for j in 0..<m where grid[i][j] == 1 && !visited[i][j] {
                var s1 = Set<Int>(), s2 = Set<Int>()
                let b = search(i, j, &s1, &s2), a = s2.count
                if a > max {
                    max = a
                    ans = b
                }
                l1.append(s1)
                l2.append(s2)
            }
        }

        for i in 0..<l2.count {
            for loc in (l2[i].count == max ? l1[i] : l2[i]) {
                let x = loc / m, y = loc % m
                grid[x][y] = l2[i].count == max ? -1 : 1
            }
        }

        return ans
    }

    private func search(_ i: Int, _ j: Int, _ s1: inout Set<Int>, _ s2: inout Set<Int>) -> Int {
        var ans = 0
        var queue = [(Int, Int)]()

        visited[i][j] = true
        queue.append((i, j))
        s1.insert(i * m + j)

        while !queue.isEmpty {
            let first = queue.removeFirst()
            let x = first.0, y = first.1

            for direction in directions {
                let nx = x + direction.0, ny = y + direction.1, loc = nx * m + ny
                if nx < 0 || nx >= n || ny < 0 || ny >= m || visited[nx][ny] {
                    continue
                }

                if grid[nx][ny] == 1 {
                    s1.insert(loc)
                    visited[nx][ny] = true
                    queue.append((nx, ny))
                } else if grid[nx][ny] == 0 {
                    s2.insert(loc)
                    ans += 1
                }
            }
        }

        return ans
    }
}
