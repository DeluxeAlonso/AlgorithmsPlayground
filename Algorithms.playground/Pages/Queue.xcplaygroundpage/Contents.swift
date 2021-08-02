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

//: [Next](@next)
