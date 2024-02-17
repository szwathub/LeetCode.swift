import Structure

protocol LeetCodeCompatible {
    var val: Int { get }
}

typealias TreeNode = BinaryTree<Int>.Node
extension BinaryTree: LeetCodeCompatible where T == Int {
    var val: Int {
        get {
            return value
        }
        set {
            value = newValue
        }
    }
}

typealias Node = Tree<Int>.Node
extension Tree: LeetCodeCompatible where T == Int {
    var val: Int {
        return value
    }
}
