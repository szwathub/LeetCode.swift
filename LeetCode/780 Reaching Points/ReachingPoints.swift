//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ReachingPoints.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/9: Created by szwathub on 2022/4/9
//

class ReachingPoints {
    func reachingPoints(_ sx: Int, _ sy: Int, _ tx: Int, _ ty: Int) -> Bool {
        var sx = sx, sy = sy, tx = tx, ty = ty

        while tx > sx && ty > sy && tx != ty {
            if tx > ty {
                tx %= ty
            } else {
                ty %= tx
            }
        }

        if tx == sx && ty == sy {
            return true
        } else if tx == sx {
            return ty > sy && (ty - sy) % tx == 0
        } else if ty == sy {
            return tx > sx && (tx - sx) % ty == 0
        }

        return false
    }
}
