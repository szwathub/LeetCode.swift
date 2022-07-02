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
//      2022/7/2: Created by szwathub on 2022/7/2
//

import XCTest
@testable import LeetCode
@testable import Structure

final class FindBottomLeftTreeValueSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), Int)] = [
        (([]), 0),
        (([2, 1, 3]), 1),
        (([1, 2, 3, 4, nil, 5, 6, nil, nil, 7]), 7)
    ]

    func testMinimumNumberofRefuelingStops() {
        let solution = FindBottomLeftTreeValue()
        for ((elements), answer) in questions {
            XCTAssertEqual(solution.findBottomLeftValue(BinaryTree(elements).root), answer)
        }
    }
}
