//
//  ViewController.swift
//  CatchTheKennyGame
//
//  Created by Enes Eken on 16.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var score = 0
    var timer = Timer()
    var counter = 0
    var kenyArray = [UIImageView]()
    var hideTimer = Timer()
    var highscore = 0

   
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var highScore: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var keny1: UIImageView!
    @IBOutlet weak var keny2: UIImageView!
    @IBOutlet weak var keny3: UIImageView!
    @IBOutlet weak var keny4: UIImageView!
    @IBOutlet weak var keny5: UIImageView!
    @IBOutlet weak var keny6: UIImageView!
    @IBOutlet weak var keny7: UIImageView!
    @IBOutlet weak var keny8: UIImageView!
    @IBOutlet weak var keny9: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedHighSchool = UserDefaults.standard.object(forKey: "highscore")
        
        if storedHighSchool == nil
        {
            highscore = 0
            highScore.text = "High Score : \(highscore)"
            
        }
        
        if let newHighScore = storedHighSchool as? Int
        {
            highscore = newHighScore
            highScore.text = "High Score : \(highscore)"
        }
    
        scoreLabel.text = "Score : \(score)"
        
        let recognezer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognezer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognezer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognezer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognezer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognezer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognezer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognezer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognezer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        keny1.isUserInteractionEnabled = true
        keny2.isUserInteractionEnabled = true
        keny3.isUserInteractionEnabled = true
        keny4.isUserInteractionEnabled = true
        keny4.isUserInteractionEnabled = true
        keny5.isUserInteractionEnabled = true
        keny6.isUserInteractionEnabled = true
        keny7.isUserInteractionEnabled = true
        keny8.isUserInteractionEnabled = true
        keny9.isUserInteractionEnabled = true
        
        kenyArray = [keny1 , keny2 , keny3 , keny4 , keny5 , keny6 , keny7 , keny8 , keny9]
        
        
        keny1.addGestureRecognizer(recognezer1)
        keny2.addGestureRecognizer(recognezer2)
        keny3.addGestureRecognizer(recognezer3)
        keny4.addGestureRecognizer(recognezer4)
        keny5.addGestureRecognizer(recognezer5)
        keny6.addGestureRecognizer(recognezer6)
        keny7.addGestureRecognizer(recognezer7)
        keny8.addGestureRecognizer(recognezer8)
        keny9.addGestureRecognizer(recognezer9)

        counter = 10
        
        timeLabel.text = "\(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
    
        hideTimer = Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(hidekenny), userInfo: nil, repeats: true)
        
        hidekenny()
    }
    
    
  @objc func hidekenny()
    {
        for kenny in kenyArray
        {
            kenny.isHidden = true
        }
        
       let random =  Int(arc4random_uniform(UInt32(kenyArray.count - 1)))
        kenyArray[random].isHidden = false
        
    
    }

@objc func increaseScore()
    {
        score += 1
        scoreLabel.text = "Score : \(score)"
        
        
    }
    
@objc func countDown()
    {
        counter -= 1
        timeLabel.text = String(counter)
        
        if counter == 0
        {
            for kenny in kenyArray
            {
                kenny.isHidden = true
            }
            timer.invalidate()
            hideTimer.invalidate()
            
            if(self.score > self.highscore)
            {
                self.highscore = self.score
                highScore.text = "High Score : \(highscore)"
                
                UserDefaults.standard.set(self.highscore, forKey: "highscore")

            }
          
           
            
            let alert = UIAlertController(title: "Time's up", message: "Do you want to play again ?", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "OK" ,style: UIAlertAction.Style.cancel, handler: nil)
            
            let replayButton = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { UIAlertAction in
                self.score = 0
                self.scoreLabel.text = "Score : \(self.score)"
                self.counter = 10
                self.timeLabel.text = String(self.counter)
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countDown), userInfo: nil, repeats: true)
            
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(self.hidekenny), userInfo: nil, repeats: true)
                
                
            }
            
            alert.addAction(okButton)
            alert.addAction(replayButton)
            
            self.present(alert, animated: true , completion: nil)
            
        
        }
        
    
    }
    
  
    
}

