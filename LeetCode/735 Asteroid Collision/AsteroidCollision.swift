//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: AsteroidCollision.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/325
//  History:
//      2022/7/13: Created by szwathub on 2022/7/13
//

class AsteroidCollision {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack = [Int]()

        for asteroid in asteroids {
            var alive = true

            while let top = stack.last, top > 0 && asteroid < 0 && alive {
                alive = top < -asteroid
                if top <= -asteroid {
                    stack.removeLast()
                }
            }

            if alive {
                stack.append(asteroid)
            }
        }

        return stack
    }
}
