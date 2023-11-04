//
//  SecondViewController.swift
//  BMI
//
//  Created by 이승민 on 11/4/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var bmiNumberLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
//    var bmiNumber: Double?
//    var adviceString: String?
//    var bmiColor: UIColor?
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
        
        guard let bmi = bmi else { return }

        // 전화면에서 전달받은 BMI를 통해 셋팅
        bmiNumberLabel.text = "\(bmi.value)"
        bmiNumberLabel.backgroundColor = bmi.matchColor
        adviceLabel.text = bmi.advice
        
    }
    
    func makeUI() {
        
        bmiNumberLabel.clipsToBounds = true
        bmiNumberLabel.layer.cornerRadius = 8
//        bmiNumberLabel.backgroundColor = .gray
        
        backButton.setTitle("다시 계산하기", for: .normal)
        backButton.clipsToBounds = true
        backButton.layer.cornerRadius = 8
    
    }

    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
