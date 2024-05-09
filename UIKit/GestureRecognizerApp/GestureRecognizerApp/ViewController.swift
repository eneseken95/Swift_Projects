//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Enes Eken on 14.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var x = true

    @IBOutlet weak var labeltext: UILabel!
    
    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageview.isUserInteractionEnabled = true
        
        let GestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageview.addGestureRecognizer(GestureRecognizer)
        
       
    }
    
    @objc func changePic()
    {
        if(x == true)
        {
            imageview.image = UIImage(named: "street")
            labeltext.text = "Street"
            x = false
        }
        
        else
        {
            imageview.image = UIImage(named: "greece")
            labeltext.text = "Greece parthenon temple"
            x = true
        }
        
    }

}
    

