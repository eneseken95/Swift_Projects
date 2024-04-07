import Foundation


let UserIsPremium: Bool = false

let name2 = "Enes"


func getUserName() -> String
{
    return  name2
}


func getUserIsPremium() -> Bool
{
    return UserIsPremium
}


func getUserInfo() -> (name3: String, isPremium3: Bool)
{
    let name4 = getUserName()
    let isPremium = getUserIsPremium()
    
    return (name4, isPremium)
}


var userData: String = name2

var UserData2: (String, Bool) = (name2, UserIsPremium)

let info1 = getUserInfo()
let name1: Bool = info1.1

let name3 = info1.name3

let isPremium = info1.isPremium3


print(name3)
