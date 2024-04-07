import Foundation


let Apple: String = "Apple"
let orange: String = "Orange"


let fruits1: [String] = ["Apple", "Orange", "Banana", "Mango"]
var fruits2: [String] = [Apple, orange]


for fruits in fruits1
{
    print(fruits)
}


let firsItem = fruits2.first


if let firsItem = fruits2.first
{
    print(firsItem)
}

print(" ")

fruits2.append("Banana")
fruits2.append(contentsOf: ["Mango", "Banana"])

print(fruits2[2])


if fruits1.indices.contains(2)
{
  let ıtem = fruits1.indices.contains(2)
}

fruits2.insert("Cherry", at: 2)

print(fruits2[2])

fruits2.remove(at: 4)


struct prodectModel {
    let title: String
    let price: Int
}

var myProducts: [prodectModel] = [
    
    prodectModel(title: "product 1", price: 50),
    prodectModel(title: "product 2", price: 60),
    prodectModel(title: "product 3", price: 70),
    prodectModel(title: "product 4", price: 80),
    prodectModel(title: "product 5", price: 90)
    
]
               
var fruitSet: Set<String> = ["Apple", "Orange", "Banana", "Mango", "Apple"]

print(fruitSet)
