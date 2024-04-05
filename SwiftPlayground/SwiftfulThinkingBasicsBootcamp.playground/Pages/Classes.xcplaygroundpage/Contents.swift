import Foundation

class ScreenViewModel
{
    let title: String
    private(set) var showButton: Bool
    
    init(title2: String, showButton2: Bool)
    {
        self.title = title2
        self.showButton = showButton2
    }
    
    func hideButton(newValue: Bool)
    {
        showButton = newValue
    }
}


let viewModel: ScreenViewModel = ScreenViewModel(title2: "Enes", showButton2: true)

var model = viewModel.showButton

model = false

print(model)

viewModel.hideButton(newValue: false)
