import Foundation


struct movieModel {
    let title: String
    let genre: movieGenre
    let isFavorite: Bool
    
    
    enum movieGenre {
    case comedy, action, horror
    }
    
    func updateFavoriteStatus(newFavorite: Bool) -> movieModel {
        movieModel(title: title, genre: genre, isFavorite: newFavorite)
    }
    
}



class movieManager
{
    public var movie1: movieModel = movieModel(title: "Avatar", genre: .action, isFavorite: false)
    private var movie2: movieModel = movieModel(title: "Breking Bad", genre: .action, isFavorite: true)
    public var movie3: movieModel = movieModel(title: "Breking Bad", genre: .action, isFavorite: true)
    private(set) var movie4: movieModel = movieModel(title: "Breking Bad", genre: .action, isFavorite: true)
    
    
}

let manager: movieManager = movieManager()

manager.movie1.updateFavoriteStatus(newFavorite: true)
print(manager.movie1)

var movie3: movieModel = manager.movie3  
movie3 = movie3.updateFavoriteStatus(newFavorite: false)
print(movie3)


let movie4: movieModel = manager.movie4

print(movie4)





