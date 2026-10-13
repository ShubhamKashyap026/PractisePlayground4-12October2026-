import Cocoa

func showWelcome() {
    print("Welcome to my app")
    print("By default this prints out a conversation")
    print("App has great value")
    print("Ranged Value comes here")
}

showWelcome() // call site

let number = 139

if number.isMultiple(of: 2) { // function being call here
    print("Even")
} else {
    print("Odd")
}

let roll = Int.random(in: 1...20)

func printTimeTable(for number: Int, upto limit: Int) { // These are called parameters - inside function
    for i in 1...limit {
        print("\(number) times \(i) is \(number * i)")
    }
}

printTimeTable(for: 5, upto: 10) // Arguments // Actual Value being passed here // Order matters

// Swift lets us build new functions out of existing functions, which is a technique called function composition

func firstFunction() {
    print("First Function Output")
    
    func secondFunction() {
        print("Second Function Output")
    }
    
    secondFunction()
}

firstFunction()


func buyCar(price: Int) {
    switch price {
    case 0...20_000:
        print("This seems cheap.")
    case 20_001...50_000:
        print("This seems like a reasonable car.")
    case 50_001...100_000:
        print("This had better be a good car.")
    default:
        print("Nothing to see here")
    }
}


// Return From Functions ->

print(sqrt(9))

func rollDice() -> Int {
    return Int.random(in: 1...6)
}



let result = rollDice()
print(result)

func checkString(inputStr1 : String, inputStr2: String) -> Bool {
    return inputStr1.sorted() == inputStr2.sorted()
}

print(checkString(inputStr1: "Jhon", inputStr2: "John"))

func phythagorusTheorem(inputInt1: Double, inputInt2: Double) -> Double {
    return sqrt((inputInt1 * inputInt1) + (inputInt2 * inputInt2))
}

print(phythagorusTheorem(inputInt1: 3, inputInt2: 4))


// Multiple Values return // Tuples ()

func isUppercased(str: String) -> Bool {
    return str == str.uppercased()
}

func getUserWithArray() -> [String] {
    return ["Taylor", "Swift"]
}

let user1 = getUserWithArray()
print("\(user1[0]) \(user1[1])")


func getUserWithDictionary() -> [String:String] {
    return ["firstName":"Taylor", "lastName":"Swift"]
}

let user2 = getUserWithDictionary()
print("First Name is \(user2["firstName", default: ""]) Last Name is \(user2["lastName", default: ""])")


func getUserWithTuples() -> (firstName: String, lastName: String) { // Can Call using Titles
    return (firstName: "Shubham", lastName : "Kashyap")
}

let user3 = getUserWithTuples()
print(user3.firstName) // Fixed Options

let (firstName, lastName) = getUserWithTuples() // This is called defining multiple variables at the same time along with destructuring
print(firstName, lastName)


let newTuple = ("A", "B", "C")
//newTuple.append // No Appending allowed // Fixed Values
//newTuple.insert

func rollDice(sides: Int, count: Int) -> [Int] {
    var rollOutput = [Int]()
    
    for i in 1...count {
        rollOutput.append(Int.random(in: 1...sides))
    }
    
    return rollOutput
}

print(rollDice(sides: 6, count: 10))

let lyric = "I see red door and i want it painted black"
print(lyric.hasPrefix("I see"))

func isUppercased(_ str: String) -> Bool {
    return str == str.uppercased()
}

print(isUppercased("John"))

func printTimeTables(for number : Int, upto: Int) {
    for i in 1...upto {
        print("\(number) * \(i) is \(number * i)")
    }
}

printTimeTables(for: 5, upto: 10)
