struct Temperature{
    static let boilingPoint = 100
    var celsius: Double
    var fahrenheit: Double{
        celsius * 1.8 + 32
    }
    var kelvin: Double{
        celsius + 273.15
    }
    
    static func convertedFromFahrenheit(_ fahrenheit: Double) -> Double{
        (fahrenheit - 32) / 1.8
    }
}

let temp = Temperature(celsius: 100)
print(temp)

var t1 = Temperature(celsius: 27)
var t2 = t1
t1.celsius = 35
print("\(t1) and \(t2)")

struct Odometer{
    var steps = 0
    mutating func walk(){
        steps += 1
    }
}

var odometer = Odometer()
//let odometer = Odometer() error
odometer.walk()
print(odometer.steps)
odometer.walk()
print(odometer.steps)

struct StepCounter{
    var totalSteps: Int = 0 {
        willSet{
            print("About to set totalSteps to \(newValue)")
        }
        didSet{
            if totalSteps > oldValue{
                print("Did set total steps to \(oldValue)")
            }
        }
    }
    
}
var steps = StepCounter()
print(steps)
steps.totalSteps = 100

let bp = Temperature.boilingPoint
let ct = Temperature.convertedFromFahrenheit(99)
print(ct)
