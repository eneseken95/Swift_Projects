import Foundation

let myArray = ["Alpha", "Beta", "Gama", "Delta", "Epsilon"]

var secondArray: [String] = []

for item in myArray
{
    if item == "Gama"
    {
        secondArray.append(item)
    }
}

print(secondArray[0])

struct LessonModel {
    let title: String
    let isFavourite: Bool
}

let allLessons: [LessonModel] = [

    LessonModel(title: "Lesson 1", isFavourite: true),
    LessonModel(title: "Lesson 2", isFavourite: false),
    LessonModel(title: "Lesson 3", isFavourite: false),
    LessonModel(title: "Lesson 4", isFavourite: true)
    
]


var favouriteLessons: [LessonModel] = []

for lesson in allLessons
{
    if lesson.isFavourite
    {
        favouriteLessons.append(lesson)
    }
}
print(favouriteLessons)


for (index, lesson) in allLessons.enumerated()
{
    
    if(index == 1)
    {
        //break
        continue
    }
    
    print("index: \(index) || lesson: \(lesson)")
}

