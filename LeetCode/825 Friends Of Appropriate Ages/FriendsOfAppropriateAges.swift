//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: FriendsOfAppropriateAges.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/27: Created by szwathub on 2021/12/27
//

class FriendsOfAppropriateAges {
    func numFriendRequests(_ ages: [Int]) -> Int {
        let sortrd = ages.sorted()
        let count = ages.count
        var left = 0, right = 0, ans = 0

        for age in sortrd where age >= 15 {
            while (2 * sortrd[left] <= age + 14) {
                left += 1
            }
            while (right + 1 < count && sortrd[right + 1] <= age) {
                right += 1
            }
            ans += right - left;
        }

        return ans
    }
}
