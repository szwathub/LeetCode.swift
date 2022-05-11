import XCTest
@testable import LeetCode
@testable import Structure

final class SerializeandDeserializeBSTSpec: XCTestCase {

    func testSerializeandDeserializeBST() {
        let tree = BinaryTree([2, 1, 3])
        let solution = Codec()
        let output = solution.serialize(tree.root)
        _ = solution.deserialize(output)
    }
}
