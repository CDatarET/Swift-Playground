protocol Loginable {
    func login()
}

//struct Student is adopting Loginable protocol
struct Student: Loginable{
    var name: String
    
    func login(){
        print("\(name) logged in!")
    }
}

//struct Teacher is adopting Loginable protocol
struct Teacher: Loginable{
    var name: String
    
    func login(){
        print("\(name) logged in!")
    }
}

//to confirm protocol, we need to implement the methods inside the protocol
func performLogin(user: Loginable){
    user.login()
}

let stud = Student(name: "CDatarET")
let teach = Teacher(name: "Teacher")
performLogin(user: stud)
performLogin(user: teach)

//CustomStringConvertible
//Equatable
//Comparable
//

class Shoe: CustomStringConvertible{
    let color: String
    let size: Int
    let hasLaces: Bool
    
    init(color: String, size: Int, hasLaces: Bool){
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
    
    var description: String{
        return "Shoe(color: \(color), size: \(size), Has Laces: \(hasLaces)"
    }
}

let myShoe = Shoe(color: "Black", size: 12, hasLaces: true)
print(myShoe)

struct Employee: Equatable{
    let firstName: String
    let lastName: String
    let jobTitle: String
    let phoneNumber: String
    
    static func == (lhs: Employee, rhs: Employee) -> Bool{
        if lhs.firstName == rhs.firstName{
            return true
        }
        else{
            return false
        }
    }
    
    static func > (lhs: Employee, rhs: Employee) -> Bool{
        if lhs.firstName > rhs.firstName{
            return true
        }
        else{
            return false
        }
    }
    
    static func < (lhs: Employee, rhs: Employee) -> Bool{
        if lhs.firstName < rhs.firstName{
            return true
        }
        else{
            return false
        }
    }
}

let e1 = Employee(firstName: "e1", lastName: "ln1", jobTitle: "job title 1", phoneNumber: "416-123-4567")
let e2 = Employee(firstName: "e2", lastName: "ln2", jobTitle: "job title 2", phoneNumber: "416-124-5678")
let e3 = Employee(firstName: "e3", lastName: "ln3", jobTitle: "job title 3", phoneNumber: "416-125-6789")
let e4 = Employee(firstName: "e4", lastName: "ln4", jobTitle: "job title 4", phoneNumber: "416-126-7890")
let e5 = Employee(firstName: "e5", lastName: "ln5", jobTitle: "job title 5", phoneNumber: "416-127-8901")

let employees = [e1, e2, e3, e4, e5]
let sortedEmployees = employees.sorted(by: >)
