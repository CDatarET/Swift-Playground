class Person{
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func sayHello(){
        print("\(name) says hello!")
    }
}

let person = Person(name: "Jane")
print(person.name)
person.sayHello()

var p2 = person //shallow copy
p2.name = "Aria"
p2.sayHello()
person.sayHello()

class Account{
    var accNum: Int
    var holderName: String
    var balance: Double
    var isEligible: String{
        if balance > 0{
            return "\(holderName) can rent movies"
        }
        else{
            return "\(holderName) cannot rent movies"
        }
    }
    
    init(accNum: Int, holderName: String, balance: Double) {
        self.accNum = accNum
        self.holderName = holderName
        self.balance = balance
    }
    
    func getName(){
        print("Account #\(accNum) is owned by \(holderName)")
    }
    
    func checkBalance(){
        print("\(holderName) has \(balance) Dennies")
    }
}

let h1 = Account(accNum: 3, holderName: "Nicole", balance: -100000)
let h2 = Account(accNum: 4, holderName: "Jane", balance: 45000)
h1.getName()
h1.checkBalance()
print(h1.isEligible)

class Animal{
    let type: String
    init(type: String){
        self.type = type
    }
    
    func makeNoise(){
        
    }
}

class Dog: Animal{
    let legs: Int
    
    init(legs: Int){
        self.legs = legs
        super.init(type: "Dog")
    }
    
    override func makeNoise(){
        print("Bark! Bark!")
    }
}

class Cat: Animal{
    override func makeNoise(){
        print("Meow!")
    }
}

class GoldenRetriever: Dog{
    let color = "Yellow"
    override func makeNoise(){
        print("Golden Retriever is Barking!")
    }
}

class Labrador: Dog{
    let color: String
    
    init(color: String){
        self.color = color
        super.init(legs: 4)
    }
    
    override func makeNoise(){
        print("Labrador is Barking!")
    }
}
