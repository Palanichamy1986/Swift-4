//: Playground - noun: a place where people can play

import UIKit

// Swift 4
let multiLineStringLiteral = """
This is one of the best feature add in Swift 4
It let’s you write “Double Quotes” without any escaping
and new lines without need of next line
"""
print(multiLineStringLiteral)

let message = "Message!"
print(message.count)
for character in message{
    print(character)
}

var names = ["Vipul","Vinay","Vishal","Akshay"]
names.swapAt(2, 3)
print(names)

let firstTwoString = names[..<2]
print(firstTwoString)

let lastThreeString = names[2...]
print(lastThreeString)

let friends = ["Vipul","Vinay","Vishal"]

let friendsDictionary = Dictionary(uniqueKeysWithValues:zip(1..., friends))
print(friendsDictionary)

print(friendsDictionary[10, default:"No Friends Exist yet!"])

let mates = ["Akshay","Anil","Vishal","Vinay","Ankit"]
let buckets = Dictionary(grouping:mates,by:{ $0.first! })
print(buckets)

struct BeaconItem: Codable {
    let name: String
    let beaconType: String
    let id: Int
}

let store = BeaconItem(name:"Store",beaconType:"Retail",id:1)
let forklift = BeaconItem(name:"Forklift",beaconType:"Equipment",id:2)
let drill = BeaconItem(name:"Drill",beaconType:"Tools",id:3)

let beacons: [BeaconItem] = [store, forklift, drill]

let encoder = JSONEncoder()
let encoded = try encoder.encode(beacons)
let JSONString = String(data:encoded, encoding:.utf8)!
print(JSONString)

let decoder = JSONDecoder()
let decoded = try decoder.decode([BeaconItem].self, from: encoded)
print(decoded)

print(decoded[1].name)

// Function
func sayHello(name: String) -> String {
    return "hello \(name)"
}

// Closure
var strHello = {(name: String) -> String in
    return "hello \(name)"
}

sayHello(name: "test")
strHello("new")


class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var person = Person(name: "Manoj", age: 31)
print("------------------------------------------")
//print(person)
dump(person)



