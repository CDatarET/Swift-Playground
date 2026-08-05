for i in 0...10{
    print(i)
}

for i in 1..<5{
    print("Hello \(i)")
}

var s = "Hello World"
for c in s{
    print(c)
}

for (index, char) in s.enumerated(){
    print("\(index): \(char)")
}

var d = ["a": 1, "b": 2, "c": 3]
for i in d.keys{
    print(d[i]!)
}
