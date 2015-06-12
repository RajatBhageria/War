//
//  ViewController.swift
//  War
//
//  Created by Rajat Bhageria on 6/10/15.
//  Copyright (c) 2015 Rajat Bhageria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
    
    
    var firstPlayerTotal = 0;
    var enemyPlayerTotal = 0;
    var cardArray:[String] = ["ace","card2","card3","card4","card5",
        "card6","card7","card8","card9","card10","jack","queen","king"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        var firstRandomNumber: Int = Int(arc4random_uniform(13))
        var firstRandomCard = cardArray[firstRandomNumber]
        self.firstCardImageView.image = UIImage(named: firstRandomCard)
        
        var secondRandomNumber: Int = Int(arc4random_uniform(13))
        var secondRandomCard = cardArray[secondRandomNumber]
        self.secondCardImageView.image = UIImage(named: secondRandomCard)


        if (firstRandomNumber > secondRandomNumber){
            firstPlayerTotal += 1
            playerScore.text = String(firstPlayerTotal);
        } else if (firstRandomNumber == secondRandomNumber){
            
        } else{
            enemyPlayerTotal += 1
            enemyScore.text = String(enemyPlayerTotal);

        }
    }

}

