import Structure

protocol LeetCodeCompatible {
    var val: Int { get }
}

typealias ListNode = SinglyLinkedList<Int>.Node
extension SinglyLinkedList.Node: LeetCodeCompatible where T == Int {
    public convenience init(_ val: Int) {
        self.init(value: val, next: nil)
    }

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
        return value
    }
}

extension BinaryTree.Node where T == Int {
    public convenience init(_ val: Int) {
        self.init(value: val, left: nil, right: nil)
    }
}
