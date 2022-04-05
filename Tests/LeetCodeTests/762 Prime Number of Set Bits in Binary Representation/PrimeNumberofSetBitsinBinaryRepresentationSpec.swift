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
//      2022/4/5: Created by szwathub on 2022/4/5
//

import XCTest
@testable import LeetCode

final class PrimeNumberofSetBitsinBinaryRepresentationSpec: XCTestCase {

    fileprivate let questions: [((Int, Int), Int)] = [
        ((6, 10), 4),
        ((10, 15), 5),
        ((842, 888), 23)
    ]

    func testPrimeNumberofSetBitsinBinaryRepresentation() {
        let solution = PrimeNumberofSetBitsinBinaryRepresentation()
        for ((left, right), answer) in questions {
            XCTAssertEqual(solution.countPrimeSetBits(left, right), answer)
        }
    }
}
