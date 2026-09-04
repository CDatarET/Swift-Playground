/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
class Human : CustomStringConvertible, Equatable, Comparable, Codable{
    var name: String
    var age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    var description: String{
        return "name: \(name), Age: \(age)"
    }
    
    static func == (lhs: Human, rhs: Human) -> Bool{
        if lhs.age != rhs.age {
            return false
        }
        
        if lhs.name != rhs.name{
            return false
        }
        
        return true
    }
    
    static func < (lhs: Human, rhs: Human) -> Bool{
        if lhs.age < rhs.age{
            return true
        }
        
        return false
    }
    
    static func > (lhs: Human, rhs: Human) -> Bool{
        if lhs.age > rhs.age{
            return true
        }
        
        return false
    }
}

var h1 = Human(name: "h1", age: 1)
var h2 = Human(name: "h2", age: 2)
//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.
print(h1)
print(h2)
//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
print(h1 == h2)
print(h1 != h2)
//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
let h3 = Human(name: "h3", age: 3)
let h4 = Human(name: "h4", age: 4)
let h5 = Human(name: "h5", age: 5)
let sortedPeople = [h5, h4, h3, h2, h1].sorted()
print(sortedPeople)
//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
let data = JSONEncoder()

/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */
