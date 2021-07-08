//: [Previous](@previous)

import Foundation

extension String {

    func indexOf(_ pattern: String) -> String.Index? {
        for i in self.indices {
            var j = i
            var found = true
            for p in pattern.indices{
                if j == self.endIndex || self[j] != pattern[p] {
                    found = false
                    break
                } else {
                    j = self.index(after: j)
                }
            }
            if found {
                return i
            }
        }
        return nil
    }

    func contains2(_ pattern: String) -> Bool {
        for i in self.indices {
            var j = i
            var found = true
            for p in pattern.indices {
                if self[j] == pattern[p] {
                    j = self.index(after: j)
                } else {
                    found = false
                    break
                }
            }
            if found {
                return true
            }
        }
        return false
    }

}

let indices = "AAAA".indices

"hola".indexOf("ola")
"hola".contains2("ola")
"hola".contains2("no")

//: [Next](@next)
