//----------------Classes and ===------------
class Person{
    var name: String
    init(name: String){
        self.name = name
    }
}

var p1 = Person(name: "a")
var p2 = Person(name: "b")
var p3 = Person(name: "a")
var p4 = p1

print(p1 === p2)
print(p1 === p3)
print(p1 === p4)

//-----------------If Else-------------------
let temperature = 100
if temperature >= 100{
    print("Boiling")
}
else{
    print("Not Boiling")
}

//----------------Boolean--------------------
let number = 1000
let isSmall = number < 10
print(isSmall)

if !isSmall{
    print("Is Big")
}

//----------------Switch----------------------
var value = 3
switch value{
    case 1: print("1")
    case 2: print("2")
    case 3: print("3")
    fallthrough
    default: print("idk")
}

let wheels = 2
switch wheels{
    case 0: print("You forgot this -> O")
    case 1: print("Unicycle")
    case 2: print("Bicycle")
    case 3: print("Tricyce")
    case 4: print("Car")
    default: print("Chill gng")
}

var letter = "z"
switch letter{
    case "a", "e", "i", "o", "u": print("Vowel")
    default: print("Consonant")
}

//------------------Ranges---------------------
let temp = 70
switch temp{
    case 65...75: print("Its a nice day")
    case Int.min...64: print("It's cold")
    default: print("It's too hot")
}

//--------------Ternary Operator---------------
var max: Int
let a = 6
let b = 7
max = a > b ? a : b
