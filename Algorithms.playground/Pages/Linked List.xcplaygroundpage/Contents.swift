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

    var isEmpty: Bool {
        head == nil
    }

    mutating func append(element: T) {
        guard !isEmpty else {
            head = Node<T>(value: element, next: nil)
            tail = head
            return
        }
        tail!.next = Node(value: element, next: nil)
        tail = tail!.next
    }

    mutating func push(element: T) {
        guard !isEmpty else {
            head = Node<T>(value: element, next: nil)
            tail = head
            return
        }
    }

}

//: [Next](@next)
