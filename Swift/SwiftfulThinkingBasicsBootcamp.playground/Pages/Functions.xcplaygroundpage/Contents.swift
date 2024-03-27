import Foundation

func myFirstFunction()
{
    print("myFirstFunction")
}

myFirstFunction()


func getUserName() -> String
{
    let userName = "Enes"
    return userName
}



let name: String = getUserName()
print(name)

let one: Bool = true

let two: Bool = false

func check(a: Bool , b: Bool) -> Bool
{
    if(a && b)
    {
      return true
    }
    else
    {
      return false
    }
    
}


func show()
{
    if (checkResult == true) 
    {
        print("Success")
    }
    
    else
    {
        print("Not Success")
    }
}






let checkResult: Bool = check(a:one , b:two)
print(checkResult)

show()

//------->


func doSomething()

{
    var title: String = "Avengers"
    
    guard title == "Avengers" else {
        print("Not MARVEL")
        return
    }
    print("Marvel")
}

doSomething()


var myValue: Int
{
   return 2+5
}

print(myValue)



