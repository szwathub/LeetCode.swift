import XCTest
@testable import LeetCode

final class KeysandRoomsSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), Bool)] = [
        (([[1], [2], [3], []]), true),
        (([[1, 3], [3, 0, 1], [2], [0]]), false),
        (([[0, 1, 2, 3], [], [], []]), true)
    ]

    func testKeysandRooms() {
        let solution = KeysandRooms()
        for ((rooms), answer) in questions {
            XCTAssertEqual(solution.canVisitAllRooms(rooms), answer)
        }
    }
}
