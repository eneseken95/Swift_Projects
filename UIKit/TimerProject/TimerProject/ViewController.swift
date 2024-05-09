//
//  ViewController.swift
//  TimerProject
//
//  Created by Enes Eken on 14.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()

    var counter = 0
    
    @IBOutlet weak var timeLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        timeLabel.text = "Time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(timerFunc) , userInfo: nil, repeats: true)
    }
    
    
    @objc func timerFunc()
    {
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0
        {
            timer.invalidate()
            timeLabel.text = "Time's Over"
        }
    }
    
    
    @IBAction func buttonclicked(_ sender: Any) {
        
        print("Button Click")
    }
    

}

