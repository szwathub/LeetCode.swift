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
//      2022/4/15: Created by szwathub on 2022/4/15
//

import XCTest
@testable import LeetCode

final class MiniParserSpec: XCTestCase {

    fileprivate let questions: [(String)] = [
        ("[123,[456,[789]]]"),
        ("324")
    ]

    func testMiniParser() {
        let solution = MiniParser()
        for s in questions {
            _ = solution.deserialize(s)
        }
    }
}
