//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: DeleteColumnstoMakeSorted.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/12: Created by szwathub on 2022/5/12
//

class DeleteColumnstoMakeSorted {
    func minDeletionSize(_ strs: [String]) -> Int {
        return helper(strs.map({ Array($0) }))
    }

    private func helper(_ strs: [[Character]]) -> Int {
        let rows = strs.count, cols = strs[0].count

        var answer = 0
        for col in 0..<cols {
            for row in stride(from: 1, to: rows, by: 1) where strs[row][col] < strs[row - 1][col] {
                answer += 1
                break
            }
        }

        return  answer
    }
}
