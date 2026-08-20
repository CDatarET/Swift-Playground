/*
 create a struct employee having name, age, mobile num. define initializers
 types of initializers- default, parameterized, custom
*/
struct Employee{
    var name: String
    var age: Int
    var mob: String
    var address: String? = nil
    
    //memberwise
    init?(name: String, age: Int, mob: String, address: String?){
        self.name = name
        self.age = age
        self.mob = mob
        self.address = address
    }
    
    //default
    init(){
        self.name = "defaultName"
        self.age = 20
        self.mob = "123456789"
    }
    
    //custom
    init(name: String, age: Int){
        self.name = name
        self.age = age;
        mob = "None given"
    }
    
    //failiable
    init?(name: String, age: Int, mob: String){
        if age >= 18{
            self.name = name
            self.age = age
            self.mob = mob
        }
        else{
            print("not adult")
            return nil
        }
    }
}

var e1 = Employee()
print(e1)

var e2 = Employee(name: "emp2", age: 20, mob: "123", address: nil)
print(e2!)

var e3 = Employee(name: "emp3", age: 21)
print(e3)

var e4 = Employee(name: "emp4", age: 3, mob: "321")
//print(e4) -> nil
