typealias ListNode = SinglyLinkedListNode<Int>

protocol LeetCodeCompatible {
    var val: Int { get }
}

extension SinglyLinkedListNode: LeetCodeCompatible where T == Int {
    var val: Int {
        get {
            return value ?? 0
        }
        set {
            value = newValue
        }
    }
}

typealias TreeNode = BinaryTreeNode<Int>

extension BinaryTreeNode: LeetCodeCompatible where T == Int {
    var val: Int {
        get {
            return value ?? 0
        }
        set {
            value = newValue
        }
    }
}
