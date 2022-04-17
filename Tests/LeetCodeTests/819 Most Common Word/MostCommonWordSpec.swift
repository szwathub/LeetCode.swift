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
//      2022/4/17: Created by szwathub on 2022/4/17
//

import XCTest
@testable import LeetCode

final class MostCommonWordSpec: XCTestCase {

    fileprivate let questions: [((String, [String]), String)] = [
        (("Bob hit a ball, the hit BALL flew far after it was hit.", ["hit"]), "ball"),
        (("a.", []), "a")
    ]

    func testMostCommonWord() {
        let solution = MostCommonWord()
        for ((paragraph, banned), answer) in questions {
            XCTAssertEqual(solution.mostCommonWord(paragraph, banned), answer)
        }
    }
}
