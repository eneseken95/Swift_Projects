import Foundation

struct Quiz {
    
    let title: String
    let dateCreated: Date?
    
    init(title: String, dateCreated: Date?) {
        self.title = title
        self.dateCreated = dateCreated ?? .now
    }
    
}

let object: Quiz = Quiz(title: "Quiz1", dateCreated: nil)

print(object.dateCreated ?? .now)


struct userModel {
    
    let name: String
    var isPremium: Bool
}
    
var user1: userModel = userModel(name: "Enes", isPremium: true)

func markUserModel()
{
    print(user1)
    
    user1 = userModel(name: user1.name, isPremium: false)
    print(user1)
}

markUserModel()


struct userModel2 {
    
    let name: String
    var isPremium: Bool
}

var user2 = userModel2(name: "Enes", isPremium: true)

func markUserModel2()
{
    print(user2)
    user2.isPremium = false
    print(user2)
}

markUserModel2()


struct userModel3 {
    
    let name: String
    let isPremium: Bool
    
    func markUserPremium(newValue: Bool) -> userModel3 {
        
        userModel3(name: "Enes", isPremium: newValue)
        
    }
}

var user3 = userModel3(name: "Enes", isPremium: false)

user3 = user3.markUserPremium(newValue: true)

print(user3)


struct userModel4 {
    
    let name: String
    var isPremium: Bool
    
    mutating func markUserPremium2(newValue: Bool)
    {
        self.isPremium = newValue
    }
    
}


var user4 = userModel4(name: "Enes", isPremium: true)


user4.markUserPremium2(newValue: false)

print(user4)






