//
//  ViewController.swift
//  DiceGame
//
//  Created by 이승민 on 9/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    var diceManager = DiceManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstImageView.image = diceManager.getFirstDice()
        secondImageView.image = diceManager.getFirstDice()
        
    }

    
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        
        // 첫번째 이미지뷰 랜덤 변경
        firstImageView.image = diceManager.getRandomDice()
        
        // 두번째 이미지뷰 랜덤 변경
        secondImageView.image = diceManager.getRandomDice()
        
        
        
    }
    
    
    

}

