// MARK: - Map

extension Collection {
    func map2<T>(_ transform: (Element) throws -> T) rethrows -> [T] {
        var temporalArray: [T] = []
        for item in self {
            temporalArray.append(try transform(item))
        }
        return temporalArray
    }
}

print([1, 2, 3].map { $0 * 2 }) // Prints [2, 4, 6]
print([1, 2, 3].map2 { $0 * 2 }) // Prints [2, 4, 6]

// MARK: - CompactMap

extension Collection {
    func compactMap2<T>(_ transform: (Element) throws -> T?) rethrows -> [T] {
        var temporalArray: [T] = []
        for item in self {
            if let transformedItem = try? transform(item) {
                temporalArray.append(transformedItem)
            }
        }
        return temporalArray
    }
}

print([1, 2, 3].compactMap { $0 % 2 == 0 ? $0 * 2 : nil }) // Prints [4]
print([1, 2, 3].compactMap2 { $0 % 2 == 0 ? $0 * 2 : nil }) // Prints [4]

// MARK: - FlatMap

extension Collection {
    func flatMap2<T: Sequence>(_ transform: (Element) throws -> T) rethrows -> [T.Element] {
        var temporalArray: [T.Element] = []
        for item in self {
            temporalArray.append(contentsOf: try transform(item))
        }
        return temporalArray
    }
}

print([[1, 2, 3], [4, 5, 6], [7, 8, 9]].flatMap({ $0 })) // Prints [1, 2, 3, 4, 5, 6, 7, 8, 9]
print([[1, 2, 3], [4, 5, 6], [7, 8, 9]].flatMap2({ $0 })) // Prints [1, 2, 3, 4, 5, 6, 7, 8, 9]
