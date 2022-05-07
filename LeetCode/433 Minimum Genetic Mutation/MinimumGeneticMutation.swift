//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MinimumGeneticMutation.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/7: Created by szwathub on 2022/5/7
//

class MinimumGeneticMutation {

    typealias GeneticPair = (genetic: String, step: Int)

    func minMutation(_ start: String, _ end: String, _ bank: [String]) -> Int {
        guard start != end else {
            return 0
        }

        var set = Set(bank)
        guard set.contains(end) else {
            return -1
        }

        var queue = [GeneticPair(start, 0)]
        while !queue.isEmpty {
            let (genetic, step) = queue.removeFirst()
            for (index, x) in genetic.enumerated() {
                for y in "ACGT" where x != y {
                    let changed = update(genetic, at: index, with: y)
                    if set.contains(changed) {
                        if changed == end {
                            return (step + 1)
                        }

                        set.remove(changed)
                        queue.append((changed, step + 1))
                    }
                }
            }
        }

        return -1
    }

    private func update(_ genetic: String, at index: Int, with character: Character) -> String {
        var characters = Array(genetic)
        characters[index] = character

        return String(characters)
    }
}
