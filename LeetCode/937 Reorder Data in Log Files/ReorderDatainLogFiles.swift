//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ReorderDatainLogFiles.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/19: Created by szwathub on 2022/5/19
//

class ReorderDatainLogFiles {

    class Log {

        /// 1: 数字日志 0:字母日志
        var type: Int

        /// 原数组中的索引
        var index: Int

        var origin: String

        var sign: String = ""

        var content: String = ""

        init(_ origin: String, _ index: Int) {
            self.origin = origin
            self.index = index
            self.type = origin.last!.isNumber ? 1 : 0

            var flag = false
            for character in origin {
                if flag == false {
                    if character == " " {
                        flag = true
                        continue
                    }
                    sign.append(character)
                } else {
                    content.append(character)
                }
            }
        }
    }

    func reorderLogFiles(_ logs: [String]) -> [String] {
        var list = [Log]()
        for (index, log) in logs.enumerated() {
            list.append(Log(log, index))
        }
        list.sort { first, last in
            if first.type != last.type {
                return first.type < last.type
            }
            if first.type == 1 {
                return first.index < last.index
            }

            if first.content == last.content {
                return first.sign < last.sign
            }

            return first.content < last.content
        }

        return list.map { $0.origin }
    }
}
