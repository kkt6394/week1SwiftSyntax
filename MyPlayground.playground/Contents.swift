protocol Operation {
    func operate(a: Int, b: Int) -> Int?
}

class Add: Operation {
    func operate(a: Int, b: Int) -> Int? {
        return a + b
    }
}

class Subtract: Operation {
    func operate(a: Int, b: Int) -> Int? {
        return a - b
    }
}

class Multiply: Operation {
    func operate(a: Int, b: Int) -> Int? {
        return a * b
    }
}

class Divide: Operation {
    func operate(a: Int, b: Int) -> Int? {
        guard b != 0 else {
            return nil
        }
        return a / b
    }
}

class Remainder: Operation {
    func operate(a: Int, b: Int) -> Int? {
        guard b != 0 else {
            return nil
        }
        return a % b
    }
}

let add: Operation = Add()
let subtract: Operation = Subtract()
let multiply: Operation = Multiply()
let divide: Operation = Divide()
let remainder: Operation = Remainder()

print(add.operate(a: 10, b: 20)!)
print(subtract.operate(a: 10, b: 20)!)
print(multiply.operate(a: 10, b: 20)!)
print(divide.operate(a: 10, b: 20)!)
print(remainder.operate(a: 10, b: 20)!)
