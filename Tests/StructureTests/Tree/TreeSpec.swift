import XCTest
@testable import Structure

class TreeSpec: XCTestCase {

    func test() {
        let node = Tree(value: 10)
        XCTAssertEqual(node.value, 10)

        node.value = 11
        XCTAssertEqual(node.value, 11)

        let literal = Tree([8, 2, 10, 9, 7, 5])
        XCTAssertEqual(literal?.value, 8)

        let other = Tree([8, nil, 1, 2, 7])
        XCTAssertEqual(other?.value, 8)
        XCTAssertEqual(other?.description, "{value: 8, children: {value: 1}, {value: 2}, {value: 7}}")

        let elements: [Int?] = []
        XCTAssertNil(Tree(elements))
        let empty: [Int] = []
        XCTAssertNil(Tree(empty))
    }
}
