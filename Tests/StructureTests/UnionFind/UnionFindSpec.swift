import XCTest
@testable import Structure

class UnionFindSpec: XCTestCase {

    func testUnionFind() {
        let union = UnionFind(100)
        union.union(1, 2)
        XCTAssertEqual(union.setCount, 99)
        union.union(2, 3)
        XCTAssertTrue(union.check(1, 3))
    }
}
