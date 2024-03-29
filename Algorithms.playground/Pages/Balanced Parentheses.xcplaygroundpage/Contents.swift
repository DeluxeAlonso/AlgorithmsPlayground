struct Stack<T> {

    private var elements: [T]

    init(elements: [T]) {
        self.elements = elements
    }

    mutating func push(_ element: T) {
        elements.append(element)
    }

    mutating func pop() -> T? {
        elements.removeLast()
    }

    var count: Int { return elements.count }

}

func isBalanced(_ text: String) -> Bool {
    var stack = Stack<Character>(elements: [])
    for character in text {
        if character == "(" {
            stack.push(character)
        } else if character == ")" {
            if stack.count == 0 {
                return false
            } else {
                stack.pop()
            }
        }
    }
    return stack.count == 0
}

print(isBalanced("((()))")) // This returns true

// MARK: - Without Stack

func isBalancedWithtoutStack(_ text: String) -> Bool {
    var array: [Character] = []
    for character in text {
        if character == "(" {
            array.append(character)
        } else if character == ")" {
            if array.count == 0 {
                return false
            } else {
                array.removeLast()
            }
        }
    }
    return array.count == 0
}

print(isBalancedWithtoutStack("((()))")) // This returns true
