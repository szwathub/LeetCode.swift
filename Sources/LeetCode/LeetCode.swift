protocol LeetCodeCompatible {
    var val: Int { get }
}

typealias ListNode = SinglyLinkedList<Int>.Node
extension SinglyLinkedList.Node: LeetCodeCompatible where T == Int {
    var val: Int {
        get {
            return value ?? 0
        }
        set {
            value = newValue
        }
    }
}

typealias TreeNode = BinaryTree<Int>.Node
extension BinaryTree.Node: LeetCodeCompatible where T == Int {
    var val: Int {
        get {
            return value ?? 0
        }
        set {
            value = newValue
        }
    }
}

typealias Node = Tree<Int>.Node
extension Tree.Node: LeetCodeCompatible where T == Int {
    var val: Int {
        get {
            return value ?? 0
        }
        set {
            value = newValue
        }
    }
}
