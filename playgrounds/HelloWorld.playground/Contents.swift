//constants and variables
let a: String = "abc"
var b = "cde"

//assigning values and errors
let defaultScore = 100
var playerOneScore = defaultScore
var playerTwoScore = defaultScore

print(playerOneScore)
print(playerTwoScore)

playerOneScore = 200
print(playerOneScore)

//classes and constructor
class Student{
    let name: String = "CDatar"
    var lName: String
    init(lName: String){
        self.lName = name
    }
}

let student = Student(lName: "a")
print(student.name)

//struct
struct Person{
    let firstName: String
    let lastName: String
    
    func sayHello(){
        print("Hello, my name is \(firstName) \(lastName)")
    }
}

let p1 = Person(firstName: "C", lastName: "Datar")
p1.sayHello()

//constant uses
let cityName = "San Francisco"
let pi = 3.141595

//initialization and declaration
var x: Int = 67
print(x)
