// Sum of first N numbers of the Fibonacci sequence: 0, 1, 1, 2, 3, 5, 8

import Foundation

func fibRecursive(_ n: Int) -> Int {
    guard n > 1 else { return n }
    return fibRecursive(n - 1) + fibRecursive(n - 2)
}

print(fibRecursive(3))
