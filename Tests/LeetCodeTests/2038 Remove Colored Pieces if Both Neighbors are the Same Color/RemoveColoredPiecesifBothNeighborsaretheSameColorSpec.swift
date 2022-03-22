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
//      2022/3/22: Created by szwathub on 2022/3/22
//

import XCTest
@testable import LeetCode

final class RemoveColoredPiecesifBothNeighborsaretheSameColorSpec: XCTestCase {

    fileprivate let questions: [((String), Bool)] = [
        (("AAABABB"), true),
        (("AA"), false),
        (("ABBBBBBBAAA"), false)
    ]

    func testRemoveColoredPiecesifBothNeighborsaretheSameColor() {
        let solution = RemoveColoredPiecesifBothNeighborsaretheSameColor()
        for ((colors), answer) in questions {
            XCTAssertEqual(solution.winnerOfGame(colors), answer)
        }
    }
}
