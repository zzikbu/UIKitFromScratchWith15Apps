//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 이승민 on 11/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        mainLabel.text = "안녕하세요"
        mainLabel.textColor = UIColor.white
        mainLabel.backgroundColor = UIColor.orange
        
        myButton.backgroundColor = UIColor.blue
        
        
    }
    
    
}

