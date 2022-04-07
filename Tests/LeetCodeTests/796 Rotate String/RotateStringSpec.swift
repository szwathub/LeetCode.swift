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
//      2022/4/7: Created by szwathub on 2022/4/7
//

import XCTest
@testable import LeetCode

final class RotateStringSpec: XCTestCase {

    fileprivate let questions: [((String, String), Bool)] = [
        (("abcde", "cdeab"), true),
        (("abcde", "abced"), false)
    ]

    func testRotateString() {
        let solution = RotateString()
        for ((s, goal), answer) in questions {
            XCTAssertEqual(solution.rotateString(s, goal), answer)
        }
    }
}
