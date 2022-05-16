//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: StickerstoSpellWord.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/16: Created by szwathub on 2022/5/16
//

class StickerstoSpellWord {

    private var stickers = [String]()

    private var target = [Character]()

    private var dp = [Int]()

    private var n = 0

    private let INF = 50

    func minStickers(_ stickers: [String], _ target: String) -> Int {
        self.stickers = stickers
        self.target = Array(target)
        self.n = target.count
        self.dp = [Int](repeating: -1, count: 1 << n)

        let ans = dfs(0)

        return ans == INF ? -1 : ans
    }

    private func dfs(_ state: Int) -> Int {
        if state == ((1 << n) - 1) {
            return 0
        }
        if dp[state] != -1 {
            return dp[state]
        }

        var ans = INF
        for sticker in stickers {
            var nstate = state
            for char in sticker {
                for i in 0..<n where target[i] == char && ((nstate >> i) & 1) == 0 {
                    nstate |= 1 << i
                    break
                }
            }
            if nstate != state {
                ans = min(ans, dfs(nstate) + 1)
            }
        }

        dp[state] = ans
        return ans
    }
}
