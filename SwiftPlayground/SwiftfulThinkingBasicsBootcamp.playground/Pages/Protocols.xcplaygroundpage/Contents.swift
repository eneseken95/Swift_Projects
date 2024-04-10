import Foundation

protocol Vehicle 
{
    var numberOfWheels: Int { get }
    func startEngine()
    func stopEngine()
}

class Car: Vehicle 
{
    var numberOfWheels: Int = 4
    
    func startEngine() 
    {
        print("Car engine started")
    }
    
    func stopEngine() 
    {
        print("Car engine stopped")
    }
}

class Truck: Vehicle 
{
    var numberOfWheels: Int = 6
    
    func startEngine()
    {
        print("Truck engine started")
    }
    
    func stopEngine() 
    {
        print("Truck engine stopped")
    }
}

class Bicycle: Vehicle 
{
    var numberOfWheels: Int = 2
    
    func startEngine() 
    {
        print("Bicycle has no engine")
    }
    
    func stopEngine() 
    {
        print("Bicycle has no engine")
    }
}

let car = Car()
let truck = Truck()
let bicycle = Bicycle()

let vehicles: [Vehicle] = [car, truck, bicycle]

for vehicle in vehicles 
{
    print("Number of wheels: \(vehicle.numberOfWheels)")
    vehicle.startEngine()
    vehicle.stopEngine()
    print("--------------------")
}

