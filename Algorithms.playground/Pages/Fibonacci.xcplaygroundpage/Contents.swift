// Nth position number of the Fibonacci sequence: 0, 1, 1, 2, 3, 5, 8
// Note: Index starts at 0.

import Foundation

// MARK: - Recursive

func fibRecursive(_ n: Int) -> Int {
    guard n > 1 else { return n }
    return fibRecursive(n - 1) + fibRecursive(n - 2)
}

print(fibRecursive(1)) // Prints 1
print(fibRecursive(3)) // Prints 2
print(fibRecursive(5)) // Prints 5
print(fibRecursive(6)) // Prints 8

// MARK: - Iterative

func fibIterative(_ n: Int) -> Int {
    guard n > 1 else { return n }

    var sum = 1
    var previousNumber = 0
    for _ in 1...n - 1 {
        let tempNumber = sum
        sum = sum + previousNumber
        previousNumber = tempNumber
    }

    return sum
}

print(fibRecursive(1)) // Prints 1
print(fibRecursive(3)) // Prints 2
print(fibRecursive(5)) // Prints 5
print(fibRecursive(6)) // Prints 8
