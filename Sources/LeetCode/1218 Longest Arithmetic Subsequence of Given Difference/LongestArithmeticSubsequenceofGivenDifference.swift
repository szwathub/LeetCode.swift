//
//  File name: LongestArithmeticSubsequenceofGivenDifference.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/5: Created by szwathub on 2021/11/5
//

import Foundation

class LongestArithmeticSubsequenceofGivenDifference {
    func longestSubsequence(_ arr: [Int], _ difference: Int) -> Int {
        var dict = [Int: Int]()

        for item in arr {
            dict[item] = (dict[item - difference] ?? 0) + 1
        }

        return dict.values.max()!
    }
}
