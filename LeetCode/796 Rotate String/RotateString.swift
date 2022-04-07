//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RotateString.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/7: Created by szwathub on 2022/4/7
//

class RotateString {
    func rotateString(_ s: String, _ goal: String) -> Bool {
        return s.count == goal.count && (s + s).contains(goal)
    }
}
