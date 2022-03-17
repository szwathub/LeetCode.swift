import XCTest
@testable import Structure

class TrieSpec: XCTestCase {
    func testTrie() {
        let trie = Trie()
        trie.insert("leetcode")
    }
}
