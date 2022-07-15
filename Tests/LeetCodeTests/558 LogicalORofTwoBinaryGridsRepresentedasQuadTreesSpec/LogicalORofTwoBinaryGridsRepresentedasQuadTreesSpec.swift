import XCTest
@testable import Structure
@testable import LeetCode

final class LogicalORofTwoBinaryGridsRepresentedasQuadTreesSpec: XCTestCase {

    fileprivate let questions: [(([[Int]?], [[Int]?]), [[Int]?])] = [
        (
            (
                [[1, 0]],
                [[1, 0]]
            ),
            [[1, 0]]
        ),
        (
            (
                [[0, 1], [1, 1], [1, 1], [1, 0], [1, 0]],
                [
                    [0, 1], [1, 1], [0, 1], [1, 1], [1, 0],
                    nil, nil, nil, nil,
                    [1, 0], [1, 0], [1, 1], [1, 1]
                ]
            ),
            [[0, 0], [1, 1], [1, 1], [1, 1], [1, 0]]
        ),
        (
            (
                [[0, 0], [1, 0], [1, 0], [1, 1], [1, 1]],
                [[0, 0], [1, 1], [1, 1], [1, 0], [1, 1]]
            ),
            [[1, 1]]
        ),
        (
            (
                [[0, 0], [1, 1], [1, 0], [1, 1], [1, 1]],
                [
                    [0, 0], [1, 1], [0, 1], [1, 1], [1, 1],
                    nil, nil, nil, nil,
                    [1, 1], [1, 0], [1, 0], [1, 1]
                ]
            ),
            [
                [0, 0], [1, 1], [0, 1], [1, 1], [1, 1],
                nil, nil, nil, nil,
                [1, 1], [1, 0], [1, 0], [1, 1]
            ]
        ),
        (
            (
                [
                    [0, 1], [1, 0], [0, 1], [1, 1], [1, 0],
                    nil, nil, nil, nil,
                    [1, 0], [1, 0], [1, 1], [1, 1]],
                [[0, 1], [0, 1], [1, 0], [1, 1], [1, 0], [1, 0], [1, 0], [1, 1], [1, 1]]
            ),
            [
                [0, 0], [0, 1], [0, 1], [1, 1], [1, 0], [1, 0], [1, 0], [1, 1],
                [1, 1], [1, 0], [1, 0], [1, 1], [1, 1]
            ]
        ),
        (
            (
                [],
                []
            ),
            []
        )
    ]

    func testAsteroidCollision() {
        let solution = LogicalORofTwoBinaryGridsRepresentedasQuadTrees()
        for ((element1, element2), answer) in questions {
            let quadTree1 = construct(element1)
            let quadTree2 = construct(element2)
            let ansTree = construct(answer)

            XCTAssertTrue(ansTree == solution.intersect(quadTree1, quadTree2))
        }
    }

    private func construct(_ elements: [[Int]?]) -> QuadTree.Node? {
        var stack = [QuadTree.Node]()
        guard let first = elements.first, let value = first else {
            return nil
        }

        let root = QuadTree.Node(value[1] == 1, value[0] == 1)
        stack.append(root)

        for index in stride(from: 1, to: elements.count, by: 4) {
            let current = stack.removeFirst()
            if index < elements.count, let value = elements[index] {
                let node = QuadTree.Node(value[1] == 1, value[0] == 1)
                current.topLeft = node
                stack.append(node)
            }

            if index + 1 < elements.count, let value = elements[index + 1] {
                let node = QuadTree.Node(value[1] == 1, value[0] == 1)
                current.topRight = node
                stack.append(node)
            }

            if index + 2 < elements.count, let value = elements[index + 2] {
                let node = QuadTree.Node(value[1] == 1, value[0] == 1)
                current.bottomLeft = node
                stack.append(node)
            }

            if index + 3 < elements.count, let value = elements[index + 3] {
                let node = QuadTree.Node(value[1] == 1, value[0] == 1)
                current.bottomRight = node
                stack.append(node)
            }
        }

        return root
    }
}
