func add1(a: Int, b: Int){
    print(a + b)
}
add1(a: 10, b: 10)

let add2 = {(a: Int, b: Int) in
    print(a + b)
}
add2(10, 20)

func calculate(a: Int, b: Int, operation: (Int, Int) -> Int){
    print(operation(a, b))
}
calculate(a: 10, b: 20){
    $0 * $1
}

calculate(a: 10, b: 7){
    $0 - $1
}

let c1 = {() in
    print("This takes no parameters and return nothing")
}
c1()

let c2 = {(string: String) in
    print(string)
}
c2("This take a parameters but doesn't return anything")

let c3 = {() in
    return "This takes no parameters but returns a value"
}
print(c3())

let c4 = {(str1: String, str2: String) in
    return str1 + str2
}
print(c4("This takes parameters", " and returns a value"))

let firstNames = ["Aga", "Antonio", "Sophie", "Trev"]
var fullNames: [String] = []
for name in firstNames{
    fullNames.append(name + " Smith")
}
let fullNames2 = firstNames.map{ (name) -> String in
    return name + " Smith"
}
let fullNames3 = firstNames.map{$0 + " Smith"}

let nums = [4, 7, 21, 54, 5, 42]
var numsLessThan20: [Int] = []
for n in nums{
    if n < 20{
        numsLessThan20.append(n)
    }
}
let alsoNumsLessThan20 = nums.filter{(n) -> Bool in
    return n < 20
}
let thisAlsoNumsLessThan20 = nums.filter {$0 < 20}

let alsoNums = [8, 6, 7, 5, 3, 0, 9]
let total = alsoNums.reduce(0, +)
