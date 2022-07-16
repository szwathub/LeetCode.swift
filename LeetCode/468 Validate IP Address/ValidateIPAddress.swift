//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ValidateIPAddress.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/328
//  History:
//      2022/7/16: Created by szwathub on 2022/7/16
//

class ValidateIPAddress {

    func validIPAddress(_ queryIP: String) -> String {
        if queryIP.contains(".") && checkIPV4(queryIP) {
            return "IPv4"
        }
        if queryIP.contains(":") && checkIPV6(queryIP) {
            return "IPv6"
        }

        return "Neither"
    }

    private func checkIPV4(_ queryIP: String) -> Bool {
        let ips = queryIP.split(separator: ".", omittingEmptySubsequences: false)

        guard ips.count == 4 else {
            return false
        }

        for ip in ips {
            let list = Array(ip)
            if ip.isEmpty || ip.count > 3 || (ip.count > 1 && list[0] == "0") {
                return false
            }
            guard let digit = Int(ip) else {
                return false
            }

            if digit < 0 || digit > 255 {
                return false
            }
        }

        return true
    }

    private func checkIPV6(_ queryIP: String) -> Bool {
        let ips = queryIP.split(separator: ":", omittingEmptySubsequences: false)

        guard ips.count == 8 else {
            return false
        }

        for ip in ips {
            if ip.count == 0 || ip.count > 4 {
                return false
            }

            for character in ip where character.hexDigitValue == nil {
                return false
            }
        }

        return true
    }
}
