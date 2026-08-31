func divide(_ number: Double, by divisor: Double){
    if divisor != 0.0{
        let result = number / divisor
        print(result)
    }
}

func divideGuard(_ number: Double, by divisor: Double){
    guard divisor != 0.0 else {
       return
    }
    
    let result = number / divisor
    print(result)
}

