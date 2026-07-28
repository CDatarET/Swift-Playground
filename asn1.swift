import Foundation

let firstName = "KaMaKshi"
let lastName = "Goyal"
let username = "KamaKshi_Goyal"
let password = "Swift@123"
let email = "kamakshi.goyal@mitwpu.edu.in"

print("Welcome, \(firstName.capitalized) \(lastName.capitalized)!")

if username.lowercased().hasPrefix(firstName.prefix(3).lowercased()) && username.contains("_"){
    print("Valid Username")
} else {
    print("Invalid Username")
}

if password.count >= 8 && password.contains("@"){
    print("Valid Password")
}
else{
    print("Invalid Password")
}

if email.hasSuffix("edu.in") && email.contains("@"){
    print("Educational Email Verified")
}
else{
    print("Invalid Email")
}

let firstLetter = password.prefix(1).lowercased()
switch firstLetter{
    case "a", "e", "i", "o", "u": print("Password starts with a vowel")
    default: print("Password starts with a consonant, number, or symbol.")
}

if(firstName.lowercased() == lastName.lowercased()){
    print("First name and last name are same")
}
else{
    print("First name and last name are not same")
}

var summary: String
summary = "Registration Successful"
summary += " " + "- Welcome to the iOS Development Centre!"
print(summary)
