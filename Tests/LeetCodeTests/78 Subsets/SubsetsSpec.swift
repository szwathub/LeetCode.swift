//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: .swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/30: Created by szwathub on 2022/4/30
//

import XCTest
@testable import LeetCode

final class SubsetsSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [[Int]])] = [
        (([1, 2, 3]), [[], [1, 2, 3], [1, 2], [1, 3], [1], [2, 3], [2], [3]]),
        (([0]), [[], [0]])
    ]

    func testSubsets() {
        let solution = Subsets()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.subsets(nums), answer)
        }
    }
}
