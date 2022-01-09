//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: DesignHashMap.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/10: Created by szwathub on 2022/1/10
//

class DesignHashMap {

    private(set) var elements = [(Int, Int)]()

    init() {

    }

    func put(_ key: Int, _ value: Int) {
        if let index = elements.firstIndex(where: { $0.0 == key }) {
            elements[index].1 = value
        } else {
            elements.append((key, value))
        }
    }

    func get(_ key: Int) -> Int {
        guard let element = elements.first(where: { $0.0 == key }) else {
            return -1
        }

        return element.1
    }

    func remove(_ key: Int) {
        elements.removeAll { $0.0 == key }
    }
}
