import Foundation


let myBool: Bool? = false


var myOtherBool: Bool?


print(myOtherBool)

myOtherBool = false
print(myOtherBool)

var myName = " "
print(myName)

myOtherBool = true
print(myOtherBool)

myOtherBool = nil
print(myOtherBool)


let newValue: Bool? = myOtherBool

print(newValue)


let SecondValue: Bool = myOtherBool ?? false

print("New value : \(SecondValue)" )


let myString: String? = "Swift"


print(myString ?? "Not Value" )


let user: Bool? = nil

func checkUser() -> Bool?
{
    let temp = user ?? nil
    
    return temp
}

let value: Bool = checkUser() ?? false

print(value)


// if let

let userPremium: Bool? = nil

func checkUserPremium() -> Bool
{
    if let newvalue2 = userPremium
    {
        return newvalue2
        
    }
    
    else
    {
        return false
    }
}

func checkUserPremium2() -> Bool
{
    if let userPremium
    {
        return userPremium
        
    }
    
    else
    {
        return false
    }
}


func checkUserPremium3() -> Bool
{
    guard let newValue3 = userPremium
            
    else
    {
        return false
    }
    
    return newValue3
}

let result: Bool = checkUserPremium3()
print(result)


// ----->



var userIsName: Bool? = true
var userDidCompleteOnBoarding: Bool? = false
var userFavoriteMovie: String? = nil



func CheckIfUserIsSetUp() -> Bool
{
    guard userIsName else {
        return false
    }
    
    guard userDidCompleteOnBoarding else {
        return false
    }
    
    guard userFavoriteMovie else {
        return false
    }
    
    return getUserStatus(userIsName2: userIsName,
        userDidCompleteOnBoarding2: userDidCompleteOnBoarding,
        userFavoriteMovie2: userFavoriteMovie)
        
}




func CheckIfUserIsSetUp() -> Bool
{
    if let userIsName
    {
        if let userDidCompleteOnBoarding
        {
            if let userFavoriteMovie
            {
                return getUserStatus(userIsName2: userIsName,
                    userDidCompleteOnBoarding2: userDidCompleteOnBoarding,
                    userFavoriteMovie2: userFavoriteMovie)
            }
            else
            {
                return false
            }
            
        }
        else
        {
            return false
        }
    }
    else
    {
        return false
    }
        
}



func CheckIfUserIsSetUp() -> Bool
{
   
    
    if let userIsName, let userDidCompleteOnBoarding, let userFavoriteMovie
    {
        return getUserStatus(userIsName2: userIsName,
            userDidCompleteOnBoarding2: userDidCompleteOnBoarding,
            userFavoriteMovie2: userFavoriteMovie)
    }
    
    
    else
    {
        return false
    }
        
}

func CheckIfUserIsSetUp2() -> Bool
{
    
    guard let userIsName, let userDidCompleteOnBoarding, let userFavoriteMovie
            
    else
    {
        return false
    }
    
    return getUserStatus(userIsName2: userIsName,
        userDidCompleteOnBoarding2: userDidCompleteOnBoarding,
        userFavoriteMovie2: userFavoriteMovie)
        
}

func getUserStatus(userIsName2:Bool , userDidCompleteOnBoarding2:Bool , userFavoriteMovie2:String) -> Bool
{
    if(userIsName2 && userDidCompleteOnBoarding2)
    {
        return true
    }
    
    else
    {
        return false
    }
}


// Optional chaining

func getUserName() -> String?
{
    return "test"
}

func getTitle() -> String
{
    return "title"
}


func getuserData()
{
    let username: String? = getUserName()
    
    let count: Int? = username?.count
    
    let title : String = getTitle()
    
    let count2 = title.count
    
    let firstCharacterIsLowercased = username?.first?.isLowercase ?? false
}




// Safely unwrap an optional
//     nil coalscing
//     if let
//     guard



