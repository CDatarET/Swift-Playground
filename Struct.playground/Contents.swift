struct Person{
    var name: String
    
    func sayHello(){
        print("Hello, I'm \(name)")
    }
}

var person1 = Person(name: "Jane")
print(person1.name)
person1.name = "Aria"
print(person1.name)

let person2 = Person(name: "Batman")
print(person2.name)
//person2.name = "Bruce" -> error
person2.sayHello()

struct Odometer{
    var count: Int
}

var odometer = Odometer(count: 100)
print(odometer.count)

struct bankAccount{
    var accNum: Int
    var balance = 0.0
}

var account1 = bankAccount(accNum: 1, balance: 100)
var account2 = bankAccount(accNum: 2, balance: 200)

struct temperaure{
    var celcius: Double
    init(celsius: Double){
        self.celcius = celsius;
    }
}

