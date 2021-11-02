typealias ListNode = SinglyLinkedList<Int>.Node<Int>

protocol LeetCodeCompatible {
    var val: Int { get }
}

extension SinglyLinkedList.Node: LeetCodeCompatible where T == Int {
    var val: Int {
        get {
            return value ?? 0
        }
        set {
            self.value = newValue
        }
    }
}
