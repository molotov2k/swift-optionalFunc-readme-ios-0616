func brokenFirstItem(items: [String]) -> String {
    return items[0]
}

var fruits = ["apple", "banana", "grape"]
brokenFirstItem(fruits)  // Works!
fruits = []
// Uncomment the next line to see the problem.
// You will get an "index out of range" error.
//brokenFirstItem(fruits)  // Breaks :-(



func firstItem(items: [String]) -> String? {
    if items.isEmpty {
        return nil
    }
    return items[0]
}

fruits = ["apple", "banana", "grape"]
firstItem(fruits)

if let fruit = firstItem(fruits) {
    print("The first fruit is \(fruit)")
} else {
    print("There are no fruits!")
}

fruits = []
firstItem(fruits)

if let fruit = firstItem(fruits) {
    print("The first fruit is \(fruit)")
} else {
    print("There are no fruits!")
}


func produceFullName(withFirstName firstName: String, middleName: String?, lastName: String) -> String {
    var name = firstName
    if let middleName = middleName {
        name = "\(name) \(middleName)"
    }
    name = "\(name) \(lastName)"
    return name
}

produceFullName(withFirstName: "Jon", middleName: "Bon", lastName: "Jovi")
produceFullName(withFirstName: "Mary", middleName: nil, lastName: "Doe")


func fullName(firstName firstName:String?, lastName:String?) -> String {
    switch (firstName == nil, lastName == nil) {
    case (true, true): return "John Doe"
    case (false, false):
        if firstName == "James" && lastName == "Bond" {
            return "Agent 007"
        } else if firstName == "Arya" && lastName == "Stark"{
            return "The girl has no name"
        } else {
            return "\(firstName!) \(lastName!)"
        }
    case (true, false): return "Mr. \(lastName!)"
    case (false, true): return "\(firstName!)"
    }
}

fullName(firstName: nil, lastName: nil)
fullName(firstName: "James", lastName: "Bond")
fullName(firstName: "Arya", lastName: "Stark")
fullName(firstName: nil, lastName: "Porter")
fullName(firstName: "Chris", lastName: "Webb")
fullName(firstName: "Ian", lastName: nil)
