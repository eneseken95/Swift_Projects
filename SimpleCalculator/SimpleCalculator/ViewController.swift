//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Enes Eken on 24.02.2024.
//

import UIKit

class ViewController: UIViewController {

    
    var result = 0
    
    @IBOutlet weak var firstonetext: UITextField!
    
    @IBOutlet weak var secondtwotext: UITextField!
    
    
    @IBOutlet weak var resultbutton: UILabel!
    
    @IBAction func sumclick(_ sender: Any) 
    {
        
        if let firstNumber = Int(firstonetext.text!)
        {
            if let secondNumber = Int(secondtwotext.text!)
            {
                result = firstNumber + secondNumber

                resultbutton.text = String(result)

            }
            
        }
       
        
        
    }
    
    @IBAction func minucclick(_ sender: Any) 
    {
        if let firstNumber = Int(firstonetext.text!)
        {
            if let secondNumber = Int(secondtwotext.text!)
            {
                result = firstNumber - secondNumber

                resultbutton.text = String(result)

            }
            
        }
       
        
        
    }
    @IBAction func mutiplyclick(_ sender: Any) 
    {
        if let firstNumber = Int(firstonetext.text!)
        {
            if let secondNumber = Int(secondtwotext.text!)
            {
                result = firstNumber * secondNumber

                resultbutton.text = String(result)

            }
            
        }
       
        
    }
    @IBAction func divideclick(_ sender: Any) 
    {
        if let firstNumber = Int(firstonetext.text!)
        {
            if let secondNumber = Int(secondtwotext.text!)
            {
                result = firstNumber / secondNumber

                resultbutton.text = String(result)

            }
            
        }
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

