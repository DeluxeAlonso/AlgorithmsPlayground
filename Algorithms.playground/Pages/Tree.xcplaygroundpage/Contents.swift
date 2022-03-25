//: [Previous](@previous)

struct Queue<T> {

    var array: [T]

    mutating func enqueue(_ element: T) {
        array.append(element)
    }

    mutating func dequeue() -> T? {
        array.removeFirst()
    }

}

class Node<T> {

    var value: T
    var children: [Node] = []

    init(_ value: T) {
        self.value = value
    }

    // MARK: - Deptch-first traversal

    func forEachDepthFirst(visit: (Node) -> Void) {
        visit(self)
        children.forEach {
            $0.forEachDepthFirst(visit: visit)
        }
    }

    func forEachLevelOrder(visit: (Node) -> Void) {
        visit(self)
        var queue = Queue<Node>(array: [])
        children.forEach { queue.enqueue($0) }
        while let node = queue.dequeue() {
            visit(node)
            node.children.forEach { queue.enqueue($0) }
        }
    }
}

class BinaryNode<T> {

    var value: T
    var left: BinaryNode?
    var right: BinaryNode?

    init(_ value: T) {
        self.value = value
    }

    func traverseInOrder(visit: (T) -> Void) {
        left?.traverseInOrder(visit: visit)
        visit(value)
        right?.traverseInOrder(visit: visit)
    }

}

struct BinarySearchTree<T: Comparable> {

    private(set) var root: BinaryNode<T>?

    init() {}

    func containsInOrder(_ value: T) -> Bool {
        guard let root = root else {
            return false
        }

        var found = false
        root.traverseInOrder {
            if $0 == value {
                found = true
            }
        }

        return found
    }

    func contains(_ value: T) -> Bool {
        var current = root
        while let node = current {
            if node.value == value {
                return true
            }
            if value < node.value {
                current = node.left
            } else {
                current = node.right
            }
        }
        return false
    }
}

//: [Next](@next)
