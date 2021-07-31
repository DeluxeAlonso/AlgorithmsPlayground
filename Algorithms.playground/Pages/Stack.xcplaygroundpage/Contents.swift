//: [Previous](@previous)

struct Stack<T> {

    private var elements: [T]

    mutating func push(_ element: T) {
        elements.append(element)
    }

    mutating func pop() -> T? {
        elements.removeLast()
    }

}

//: [Next](@next)
