//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FindAllDuplicatesinanArray.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/8: Created by szwathub on 2022/5/8
//

class FindAllDuplicatesinanArray {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var numbers = nums
        for i in 0..<numbers.count {
            while numbers[i] != numbers[numbers[i] - 1] {
                numbers.swapAt(i, numbers[i] - 1)
            }
        }

        return numbers.enumerated().compactMap { a in
            if a.element - 1 != a.offset {
                return a.element
            }

            return nil
        }
    }
}
