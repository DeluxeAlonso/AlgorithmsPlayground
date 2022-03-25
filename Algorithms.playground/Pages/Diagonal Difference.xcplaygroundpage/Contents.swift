//: [Previous](@previous)

// Given a square matrix, calculate the absolute difference between the sums of its diagonals.
func diagonalDifference(arr: [[Int]]) -> Int {
    let count = arr.count
    var firstDiagonalSum = 0
    var secondDiagonalSum = 0
    for index in 0..<count {
        firstDiagonalSum += arr[index][index]
        secondDiagonalSum += arr[index][count-index-1]
    }
    return abs(firstDiagonalSum - secondDiagonalSum)
}

var input = [
    [1, 2, 3],
    [1, 2, 3],
    [1, 2, 3]
]

diagonalDifference(arr: input)

let years = [15, 2, 67, 4, 5]
let sum = years.filter { $0 < 10 }.map { $0 * 2 }.reduce(5, +)

print(sum)

protocol LDelegate: AnyObject {
    var name: String { get }
}

struct LLog {
    weak var delegate: LDelegate?

    func printName() {
        print("\(delegate?.name ?? "") the languague")
    }
}

class SLanguague: LDelegate {
    var name: String = "Swift"
    lazy var log = LLog(delegate: self)

    func printName() {
        log.printName()
    }

    init() {
        print("Initialized")
    }

    deinit {
        print("Deinit")
    }
}

var lc: SLanguague? = SLanguague()
lc?.printName()
lc = nil

struct Driver {
    var uuid: Int
    var isEnable = true

    init(uuid: Int) {
        self.uuid = uuid
    }
}

let d1 = Driver(uuid: 1)
let d2 = Driver(uuid: 2)
let d3 = Driver(uuid: 3)

let allDrivers = [d1,d2,d3]
var currentDrivers = allDrivers
var removedDriver = currentDrivers.removeFirst()
removedDriver.isEnable = false
print(allDrivers.count, currentDrivers.count, d1.isEnable)

//: [Next](@next)
