//
//  ViewController.swift
//  ProblemApp
//
//  Created by Enes Eken on 28.02.2024.
//

import UIKit

class ViewController: UIViewController 
{
    var sonuc = 0

    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        
        if let weight = Int(textField.text!)
        {
           sonuc = weight * 10
            
           resultLabel.text = String(sonuc)
        }
    }
    
    
    
}

