// Calculate the depth of an homogeneus multi-dimensional array

extension Collection {

    var depth: Int {
        ((first as? [Any])?.depth ?? 0) + 1
    }

}

print([[1, 2], [2, 3], [4, 5]].depth) // Prints 2
print([[[1, 2]], [[2, 3]], [[4, 5]]].depth) // Prints 3
