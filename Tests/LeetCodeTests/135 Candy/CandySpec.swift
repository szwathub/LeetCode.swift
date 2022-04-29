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
//      2022/4/29: Created by szwathub on 2022/4/29
//

import XCTest
@testable import LeetCode

final class CandySpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([1, 0, 2]), 5),
        (([1, 2, 2]), 4)
    ]

    func testCandy() {
        let solution = Candy()
        for ((ratings), answer) in questions {
            XCTAssertEqual(solution.candy(ratings), answer)
        }
    }
}
