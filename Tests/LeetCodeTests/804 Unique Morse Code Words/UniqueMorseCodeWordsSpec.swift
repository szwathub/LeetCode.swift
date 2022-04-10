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
//      2022/4/10: Created by szwathub on 2022/4/10
//

import XCTest
@testable import LeetCode

final class UniqueMorseCodeWordsSpec: XCTestCase {

    fileprivate let questions: [(([String]), Int)] = [
        ((["gin", "zen", "gig", "msg"]), 2),
        ((["a"]), 1)
    ]

    func testUniqueMorseCodeWords() {
        let solution = UniqueMorseCodeWords()
        for ((words), answer) in questions {
            XCTAssertEqual(solution.uniqueMorseRepresentations(words), answer)
        }
    }
}
