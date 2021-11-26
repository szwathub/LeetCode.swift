import Structure

protocol LeetCodeCompatible {
    var val: Int { get }
}

typealias ListNode = SinglyLinkedList<Int>.Node
extension SinglyLinkedList.Node: LeetCodeCompatible where T == Int {
    var val: Int {
        get {
            return value
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
            return value
        }
    }
}
