//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: FirstBadVersion.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/1: Created by szwathub on 2021/11/1
//

import Foundation

class VersionControl {
    var bad: Int

    init(_ bad: Int) {
        self.bad = bad
    }

    func isBadVersion(_ version: Int) -> Bool {
        return version >= bad
    }
}

class FirstBadVersion: VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var start = 1, end = n
        var answer = 1

        while start <= end {
            let mid = (start + end) / 2
            if isBadVersion(mid) && !isBadVersion(mid - 1) {
                answer = mid
                break
            } else if !isBadVersion(mid) {
                start = mid + 1
            } else {
                end = mid - 1
            }
        }

        return answer
    }
}
