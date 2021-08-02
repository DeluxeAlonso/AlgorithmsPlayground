//: [Previous](@previous)

extension Sequence {

    func filter2(_ isIncluded: (Element) throws -> Bool) rethrows -> [Element] {
        var filteredElements: [Element] = []
        for item in self {
            if try isIncluded(item) {
                filteredElements.append(item)
            }
        }
        return filteredElements
    }

}

let arrayToEvaluate = [1, 0, 3, 4, 5]
print(arrayToEvaluate.filter({ $0 != 0 }))
print(arrayToEvaluate.filter2({ $0 != 0 }))

//: [Next](@next)
