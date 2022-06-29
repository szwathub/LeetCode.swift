//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: EncodeandDecodeTinyURL.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/306
//  History:
//      2022/6/29: Created by szwathub on 2022/6/29
//

class EncodeandDecodeTinyURL {

    private var database: [Int: String]

    private var urlToKey: [String: Int]

    private let K1 = 1117

    private let K2 = 1_000_000_007

    init() {
        database = [:]
        urlToKey = [:]
    }

    func encode(_ longUrl: String) -> String {
        if let key = urlToKey[longUrl] {
            return "http://tinyurl.com/\(key)"
        }

        var key = 0, base = 1
        for character in longUrl {
            key = (key + Int(character.asciiValue!) * base) % K2
            base = (base * K1) % K2
        }

        database[key] = longUrl
        urlToKey[longUrl] = key

        return "http://tinyurl.com/\(key)"
    }

    func decode(_ shortUrl: String) -> String {
        var key: String = ""
        for character in shortUrl where character.isNumber {
            key.append(character)
        }

        return database[Int(key)!]!
    }
}
