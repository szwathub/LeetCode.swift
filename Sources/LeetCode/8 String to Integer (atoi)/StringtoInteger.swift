//
//  File name: StringtoInteger.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/19: Created by szwathub on 2021/10/19
//

import Foundation

class StringtoInteger {
    class Automaton {
        enum State: String {
            case start, sign, number, end
        }

        var state = State.start
        var ans = 0
        var sign = 1
        lazy var table: [State: [State]] = [
            .start: [.start, .sign, .number, .end],
            .sign: [.end, .end, .number, .end],
            .number: [.end, .end, .number, .end],
            .end: [.end, .end, .end, .end]
        ]

        init() {

        }

        public func fetch(_ character: Character) -> State {
            updateState(character)

            switch state {
                case .start:
                    break
                case .sign:
                    sign = character == "-" ? -1 : 1
                case .number:
                    guard let value = Int(String(character)) else {
                        state = .end
                        break
                    }

                    ans = ans * 10 + value

                    if sign == 1 && ans > Int32.max {
                        ans = Int(Int32.max)
                        state = .end
                    } else if sign == -1 && ans * -1 < Int32.min {
                        ans = -Int(Int32.min)
                        state = .end
                    }
                case .end:
                    break
            }

            return state
        }

        private func updateState(_ character: Character) {
            var index = 3
            if character == " " {
                index = 0
            } else if character == "+" || character == "-" {
                index = 1
            } else if character.isNumber {
                index = 2
            }

            if let list = table[state] {
                state = list[index]
            }
        }
    }

    func myAtoi(_ s: String) -> Int {
        let automaton = Automaton()

        for character in s {
            if automaton.fetch(character) == .end {
                break
            }
        }

        return automaton.ans * automaton.sign
    }
}
