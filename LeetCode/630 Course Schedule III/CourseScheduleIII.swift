//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: CourseScheduleIII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/14: Created by szwathub on 2021/12/14
//

import Structure

class CourseScheduleIII {
    func scheduleCourse(_ courses: [[Int]]) -> Int {
        let sorted = courses.sorted { $0[1] < $1[1] }
        var queue = PriorityQueue<Int>.init(sort: >)
        var total = 0

        for course in sorted {
            let duration = course[0], lastDay = course[1]

            if total + duration <= lastDay {
                total += duration
                queue.enqueue(duration)
            } else if !queue.isEmpty && queue.peek()! > duration {
                total -= queue.peek()! - duration
                queue.dequeue()
                queue.enqueue(duration)
            }
        }

        return queue.count
    }
}
