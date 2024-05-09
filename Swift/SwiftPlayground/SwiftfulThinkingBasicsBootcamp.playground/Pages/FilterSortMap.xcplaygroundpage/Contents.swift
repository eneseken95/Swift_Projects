import Foundation

struct LessonModel {
    let title: String
    let isFavourite: Bool
    let order: Int
}


let allLessons: [LessonModel] = [

    LessonModel(title: "Lesson 1", isFavourite: true, order: 1),
    LessonModel(title: "Lesson 2", isFavourite: false, order: 2),
    LessonModel(title: "Lesson 3", isFavourite: false, order: 3),
    LessonModel(title: "Lesson 4", isFavourite: true, order: 4)
    
]


var favouriteLessons: [LessonModel] = allLessons.filter{ user in
    
     return user.isFavourite
}

var favouriteLessons2: [LessonModel] = allLessons.filter{$0.isFavourite}

var orderedLesson: [LessonModel] = allLessons.sorted{$0.order < $1.order }


var LessonName:[String] = allLessons.map{$0.title}

print(favouriteLessons)

print(favouriteLessons2)

print(orderedLesson)

print(LessonName)
