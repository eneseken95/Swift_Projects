import Foundation

struct EmployeeModel: EmployeeModelName {
    let title: String
    let name: String
}

protocol EmployeeModelName
{
    let name: String
}
