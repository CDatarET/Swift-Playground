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
