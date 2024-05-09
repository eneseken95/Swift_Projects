//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Enes Eken on 2.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Nametext: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let storedName = UserDefaults.standard.object(forKey: "Name")
        
        let storedBirthday = UserDefaults.standard.object(forKey: "Birthday")
        
        // Casting - as? vs. as! optional
        
        if let newName = storedName as? String{
        
            nameLabel.text = newName
        }
        
        if let newBirthday = storedBirthday as? String
        {
            birthdayLabel.text = newBirthday
        }
    }

    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.setValue(Nametext.text, forKey: "Name")
        
        UserDefaults.standard.setValue(birthdayText.text, forKey: "Birthday")
        
        nameLabel.text = "Name : \(Nametext.text!)"
        
        birthdayLabel.text = "Birthday : \(birthdayText.text!)"
        
        
    }
    
    
    @IBAction func deleteButton(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "Name")
        
        let storedBirthday = UserDefaults.standard.object(forKey: "Birthday")
        
        if let newName = storedName as? String
        {
            UserDefaults.standard.removeObject(forKey: "Name")
            nameLabel.text = "Name :"
        }
        
        if (storedBirthday as? String) != nil
        {
            UserDefaults.standard.removeObject(forKey: "Birthday")
            birthdayLabel.text = "Birthday :"
        }
        
        
       
        
    }
    
    
    
   

    @IBOutlet weak var brithdayLabel: UILabel!
    
}

