import Foundation

var myFirstDictionary: [String: Bool] = [
    "Apple": true,
    "Orange": false
]

let item = myFirstDictionary["Banana"]
let item2 = myFirstDictionary["Apple"]

myFirstDictionary["xyz"] = true

myFirstDictionary.removeValue(forKey: "xyz")

print(myFirstDictionary)


struct postModel {
    let id: String
    let title: String
    let likeCount: Int
}

var postArray: [postModel] = [

    postModel(id: "abc20", title: "Post1", likeCount: 4),
    postModel(id: "abc22", title: "Post2", likeCount: 5),
    postModel(id: "abc24", title: "Post3", likeCount: 8),
    postModel(id: "abc28", title: "Post4", likeCount: 9)
    
]

var postDict: [String: postModel] = [
    "a1" :  postModel(id: "abc20", title: "Post1", likeCount: 4),
    "b2" :  postModel(id: "abc22", title: "Post2", likeCount: 5),
    "c3" :  postModel(id: "abc24", title: "Post3", likeCount: 8),
    "d4" :  postModel(id: "abc28", title: "Post4", likeCount: 9)
]


let newItem = postDict["a1"]

print(newItem ?? 2)


if let newItem2 = postDict["x2"]
{
    print(newItem2)
}
else
{
    print("deger yok")
}
    
