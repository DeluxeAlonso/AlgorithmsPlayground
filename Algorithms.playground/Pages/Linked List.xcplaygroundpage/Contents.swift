//: [Previous](@previous)

class Node<T> {

    var value: T
    var next: Node?

    init(value: T, next: Node?) {
        self.value = value
        self.next = next
    }

}

struct LinkedList<T> {

    var head: Node<T>?
    var tail: Node<T>?

    // MARK: - Append

    public mutating func append(_ value: T) {
        guard head == nil else {
            head = Node(value: value, next: nil)
            tail = head
            return
        }

        tail!.next = Node(value: value, next: nil)
        tail = tail!.next
    }

}

//: [Next](@next)
