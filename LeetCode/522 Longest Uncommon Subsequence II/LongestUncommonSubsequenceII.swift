//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LongestUncommonSubsequenceII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/334
//  History:
//      2022/7/18: Created by szwathub on 2022/7/18
//

class LongestUncommonSubsequenceII {
    func findLUSlength(_ strs: [String]) -> Int {
        func isSubsequence(_ s: [Character], _ t: [Character]) -> Bool {
            var pt_s = 0, pt_t = 0

            while pt_s < s.count && pt_t < t.count {
                if s[pt_s] == t[pt_t] {
                    pt_s += 1
                }

                pt_t += 1
            }

            return pt_s == s.count
        }

        var ans = -1
        for (i, s) in strs.enumerated() {
            var check = true
            for (j, t) in strs.enumerated() {
                if i != j &&  isSubsequence(Array(s), Array(t)) {
                    check = false
                    break
                }
            }

            if check {
                ans = max(ans, s.count)
            }
        }

        return ans
    }
}
