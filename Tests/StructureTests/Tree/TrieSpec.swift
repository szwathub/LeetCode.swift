import XCTest
@testable import Structure

class TrieSpec: XCTestCase {
    func test() {
        let trie = Trie<Character>()
        trie.insert("leetcode")
        trie.insert("leetco")
        _ = trie.search("la")
    }
}
