//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: ContainsDuplicate.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/26: Created by szwathub on 2021/10/26
//

class ContainsDuplicate {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        return nums.count > Set(nums).count
    }
}
