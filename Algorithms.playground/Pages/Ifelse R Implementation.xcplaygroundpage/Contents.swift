// We want to implement an ifelse() statement like the statistical programming language R uses.
// Example: ifelse(condition, valueTrue, valueFalse)

func ifelse(_ condition: Bool, _ valueTrue: Int, _ valueFalse: Int) -> Int {
    return condition ? valueTrue : valueFalse
}

print(ifelse(true, 1, 0)) // Prints 1
print(ifelse(false, 1, 0)) // Prints 0

// MARK: - Type-erased Any type

func ifelseV2(_ condition: Bool, _ valueTrue: Any, _ valueFalse: Any) -> Any {
    return condition ? valueTrue : valueFalse
}

print(ifelseV2(true, 1, 0) as! Int) // Prints 1
print(ifelseV2(false, 1, 0) as! Int) // Prints 0
// V2 does not protects us from using different types for valueTrue and valueFalse
// This statement would crash: print(ifelseV2(true, "1", 0) as! Int)

// MARK: - Generics

func ifelseV3<T>(_ condition: Bool, _ valueTrue: T, _ valueFalse: T) -> T {
    return condition ? valueTrue : valueFalse
}

print(ifelseV3(true, 1, 0)) // Prints 1
print(ifelseV3(false, 1, 0)) // Prints 0
// let value = ifelseV3(false, "1", 0) Does not compile

// MARK: - Closure

func functionParameter1() -> Int {
    print("1")
    return 1
}
func functionParameter2() -> Int {
    print("2")
    return 2
}

// If we call ifelseV3(true, functionParameter1(), functionParameter2())) both functions
// will get called.

func ifelseV4<T>(_ condition: Bool, _ valueTrue: () -> T, _ valueFalse: () -> T) -> T {
    return condition ? valueTrue() : valueFalse()
}

print(ifelseV4(true, { 1 }, { 0 })) // Prints 1
print(ifelseV4(false, { functionParameter1() }, { functionParameter2() })) // Prints 2

// MARK: - Autoclosure

func ifelseV5<T>(_ condition: Bool, _ valueTrue: @autoclosure () -> T, _ valueFalse: @autoclosure () -> T) -> T {
    return condition ? valueTrue() : valueFalse()
}

print(ifelseV5(true, 1, 0)) // Prints 1
print(ifelseV5(false, functionParameter1(), functionParameter2())) // Prints 2

// MARK: - Inlinable

// Because ifelse implementation will never change, it makes sense to mark the function as inlinable

@inlinable func ifelseV6<T>(_ condition: Bool, _ valueTrue: @autoclosure () -> T, _ valueFalse: @autoclosure () -> T) -> T {
    return condition ? valueTrue() : valueFalse()
}

print(ifelseV6(true, 1, 0)) // Prints 1
print(ifelseV6(false, functionParameter1(), functionParameter2())) // Prints 2
