//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SimplifyPath.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/6: Created by szwathub on 2022/1/6
//

class SimplifyPath {
    func simplifyPath(_ path: String) -> String {
        let list = path.split(separator: "/").compactMap { "\($0)" }

        var stack = [String]()
        for op in list {
            switch op {
                case "..":
                    _ = stack.popLast()
                case ".":
                    break
                default:
                    stack.append(op)
            }
        }

        return "/" + stack.joined(separator: "/")
    }
}
