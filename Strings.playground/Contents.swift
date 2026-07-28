var greeting = "Hello, playground"
let anotherString = "Hello World"

print(greeting)
print(anotherString)

var str1 = "abc"
var str2 = str1
print(str1 == str2)

var str3 =
"""
Q: What is your name?
A: Joe
"""


var str4 =
"""
Hello\tWorld
B\nY\nE\n
\\
\"lol\"
"""
print(str4)

str4 += str3
print(str4)

var str5 = "HELLO WORLD"
print(str5)
print(str5.lowercased())

var str6 = "jfhsnnqwethcneqwertyuiop"
print(str6.contains("qwerty"))
