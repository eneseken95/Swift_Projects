import Foundation


struct carModel
{
    let car: String
   
}

var firstCars: carModel = carModel(car: "BMW")

var secondCars: carModel = carModel(car: "Mercedes")

print(firstCars.car)
print(secondCars.car)

enum carBrandOption
{
    case ford, toyota, honda
    
    var title: String
    {
        switch self
        {
        case .ford:
            return "ford"
        
        case .toyota:
            return "toyota"
        
        case .honda:
            return "honda"
            
        default:
            return "default"
        }
    }
}

var forBrand: carBrandOption = .ford

print(forBrand)
