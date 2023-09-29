//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceSix")
        
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceTwo")
        
        diceImageView1.alpha = 1
        
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceImages : [UIImage] = [UIImage(named: "DiceOne")!, UIImage(named: "DiceTwo")!, UIImage(named: "DiceThree")!, UIImage(named: "DiceFour")!, UIImage(named: "DiceFive")!, UIImage(named: "DiceSix")!]
        
        let randomIndex1 = Int.random(in: 0..<diceImages.count)
        let randomIndex2 = Int.random(in: 0..<diceImages.count)
        
        diceImageView1.image = diceImages[randomIndex1]
        
        diceImageView2.image = diceImages[randomIndex2]
    }
    
}

