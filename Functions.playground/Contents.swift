func triple(num: Int){
    let result = num * 3
    print("\(num) x 3 = \(result)")
}
triple(num: 10)

func multiply(a: Int, b: Int){
    let result = a * b
    print("\(a) * \(b) = \(result)")
}
multiply(a: 10, b: 20)

func add(a: Int, b: Int) -> Int{
    return a + b
}
print("9 + 10 = \(add(a: 9, b: 10))")

func factorial(n: Int) -> Int{
    if n == 1{
        return 1
    }
    
    return n * factorial(n: n - 1)
}
print(factorial(n: 10))

func sayHello(to: String, and: String){
    print("Hello \(to) and \(and)")
}
sayHello(to: "Alice", and: "Bob")

func divide(_ a: Int, _ b: Int) -> Int{
    return a / b
}
divide(10, 2)
