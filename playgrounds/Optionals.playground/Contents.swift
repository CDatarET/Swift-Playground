//-----------------------------------part 1-------------------------------------------
struct Book{
    let name: String
    let publicationYear: Int?
}

let firstDickens = Book(name: "A Christmas Carol", publicationYear: 1843)
let secondDickens = Book(name: "David Copperfield", publicationYear: 1849)

let books = [firstDickens, secondDickens]

let unannouncedBook = Book(name: "Rebels and Lions", publicationYear: nil)

//-----------------------------------part 2-------------------------------------------

//var serverResponseCode = 404
//serverResponseCode = nil -> error
var serverResponseCode: Int? = 404
serverResponseCode = nil

//-----------------------------------force unwrap-------------------------------------------
if books[0].publicationYear != nil{
    let actualYear = books[0].publicationYear!
    print(actualYear)
}

if unannouncedBook.publicationYear != nil{
    let actualYear = unannouncedBook.publicationYear!
    print(actualYear)
}

//-----------------------------------optional binding-------------------------------------------
if let publicationYear = books[0].publicationYear {
    print("The book was published in \(publicationYear)")
}
else{
    print("Book does not have official publication date")
}

if let publicationYear = unannouncedBook.publicationYear {
    print("The book was published in \(publicationYear)")
}
else{
    print("Book does not have official publication date")
}

//-------------------------------functions and optionals-----------------------------------
func printFullName(firstName: String, middleName: String?, lastName: String){
    if middleName == nil{
        print("First name: \(firstName), Last Name: \(lastName)")
    }
    else{
        print("First name: \(firstName), Middle Name; \(middleName!), Last Name: \(lastName)")
    }
}

//-------------------------------------------------------------------------------------------------
struct Toddler{
    var birthName: String
    var monthsOld: Int
    
    init?(birthName: String, monthsOld: Int){
        if monthsOld < 12 || monthsOld > 36{
            return nil
        }
        else{
            self.birthName = birthName
            self.monthsOld = monthsOld
        }
    }
}

let possibleToddler = Toddler(birthName: "Evania", monthsOld: 14)
if let toddler = possibleToddler{
    print("\(toddler.birthName) is \(toddler.monthsOld) months old")
}
else{
    print("The age is not valid")
}

//----------------------------optional chaining--------------------------------
struct Address{
    var buildingNumber: String?
    var streetName: String?
    var apartmentNumber: String?
}

struct Residence{
    var address: Address?
}
struct Person{
    var age: Int
    var residence: Residence?
}

let address = Address(buildingNumber: "1234", streetName: "Street street", apartmentNumber: "67")
let residence = Residence(address: address)
let person = Person(age: 21, residence: residence)
if let theResidence = person.residence{
    if let theAddress = theResidence.address{
        if let theApartmentNumber = theAddress.apartmentNumber{
            print("they live in apartment number \(theApartmentNumber)")
        }
    }
}

