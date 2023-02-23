extension Collection {

    func reduce2<T>(_ initialResult: T, _ nextResult: (T, Element) throws -> T) rethrows -> T {
        var accumulator = initialResult
        for element in self {
            accumulator = try nextResult(accumulator, element)
        }
        return accumulator
    }

}

print([1, 2, 3].reduce(0, { x, y in x + y })) // Prints 6
print([1, 2, 3].reduce2(0, { x, y in x + y })) // Prints 6
