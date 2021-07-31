//: [Previous](@previous)

public class Node<T> {

    public var value: T
    public var children: [Node] = []

    public init(_ value: T) {
        self.value = value
    }

    // MARK: - Deptch-first traversal

    func forEachDepthFirst(visit: (Node) -> Void) {
        visit(self)
        children.forEach {
            $0.forEachDepthFirst(visit: visit)
        }
    }

}

public class BinaryNode<T> {

    public var value: T
    public var left: BinaryNode?
    public var right: BinaryNode?

    public init(_ value: T) {
        self.value = value
    }

    public func traverseInOrder(visit: (T) -> Void) {
        left?.traverseInOrder(visit: visit)
        visit(value)
        right?.traverseInOrder(visit: visit)
    }

}

public struct BinarySearchTree<T: Comparable> {

    public private(set) var root: BinaryNode<T>?

    public init() {}

    public func containtsInOrder(_ value: T) -> Bool {
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

    public func contains(_ value: T) -> Bool {
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
