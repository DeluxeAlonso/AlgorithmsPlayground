// We ant to implement an ifelse() statement like the statistical programming language R uses
// Exmaple: ifelse(condition, valueTrue, valueFalse)

func iselse(_ condition: Bool, _ valueTrue: Int, _ valueFalse: Int) -> Int {
    return condition ? valueTrue : valueFalse
}
