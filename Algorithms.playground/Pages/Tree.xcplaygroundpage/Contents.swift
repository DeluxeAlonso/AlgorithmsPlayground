//: [Previous](@previous)

import Foundation

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

//: [Next](@next)
