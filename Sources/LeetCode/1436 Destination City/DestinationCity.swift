//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: DestinationCity.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/25: Created by szwathub on 2021/10/25
//

import Foundation

class DestinationCity {
    func destCity(_ paths: [[String]]) -> String {
        var set = Set<String>()

        for path in paths {
            set.insert(path[1])
        }
        for path in paths {
            set.remove(path[0])
        }

        return set.first!
    }
}
