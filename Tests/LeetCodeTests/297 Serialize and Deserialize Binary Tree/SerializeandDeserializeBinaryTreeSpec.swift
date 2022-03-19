import XCTest
@testable import LeetCode
@testable import Structure

final class SerializeandDeserializeBinaryTreeSpec: XCTestCase {

    func testSerializeandDeserializeBinaryTree() {
        let solution = SerializeandDeserializeBinaryTree()
        let tree = BinaryTree([1, 2, 3, nil, nil, 4, 5])
        let serialize = solution.serialize(tree.root)
        let deserialize = solution.deserialize(serialize)
        XCTAssertTrue(deserialize == tree.root)
    }
}
