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
    
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        
        // 첫번째 이미지뷰 랜덤 변경
        firstImageView.image = diceArray.randomElement()
        
        // 두번째 이미지뷰 랜덤 변경
        secondImageView.image = diceArray.randomElement()
        
        
        
    }
    
    
    

}

