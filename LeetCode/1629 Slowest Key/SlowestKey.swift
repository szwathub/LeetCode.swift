//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SlowestKey.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/9: Created by szwathub on 2022/1/9
//

class SlowestKey {
    func slowestKey(_ releaseTimes: [Int], _ keysPressed: String) -> Character {
        var prev = 0
        var answer: Character = "a"
        var time = 0
        for (release, character) in zip(releaseTimes, keysPressed) {
            if (release - prev > time) || (release - prev == time && character > answer) {
                answer = character
                time   = release - prev
            }

            prev = release
        }

        return answer
    }
}
