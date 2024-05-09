//
//  ViewController.swift
//  AlertProject
//
//  Created by Enes Eken on 13.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var passwordAgainText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func SignUpButton(_ sender: Any) {
        
        
        if userNameText.text == ""
        {
            
            AlertMessage(title: "Error" , message: "Username not found")
        }
        
        else if passwordText.text == ""
        {
            
            AlertMessage(title: "Error", message: "Password not found")
            
        }
        else if passwordText.text != passwordAgainText.text
        {
            
            AlertMessage(title: "Error", message: "Password do not match")
        }
        
        else
        {
            
            AlertMessage(title: "Success", message: "User Ok")
        }
        
    }
    
    func AlertMessage(title: String , message: String)
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        
        alert.addAction(okButton)
        
        self.present(alert, animated: true , completion: nil)
    }
    
}

