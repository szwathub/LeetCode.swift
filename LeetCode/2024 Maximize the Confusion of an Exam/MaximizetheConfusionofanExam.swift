//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MaximizetheConfusionofanExam.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/29: Created by szwathub on 2022/3/29
//

class MaximizetheConfusionofanExam {
    func maxConsecutiveAnswers(_ answerKey: String, _ k: Int) -> Int {
        let list = Array(answerKey)
        return max(maxConsecutiveCharacter("T", list, k), maxConsecutiveCharacter("F", list, k))
    }

    private func maxConsecutiveCharacter(_ character: Character, _ answerKeys: [Character], _ k: Int) -> Int {
        var answer = 0, left = 0, sum = 0
        for right in 0..<answerKeys.count {
            if answerKeys[right] == character {
                sum += 1
            }
            while sum > k {
                if answerKeys[left] == character {
                    sum -= 1
                }
                left += 1
            }
            answer = max(answer, right - left + 1)
        }

        return answer
    }
}
