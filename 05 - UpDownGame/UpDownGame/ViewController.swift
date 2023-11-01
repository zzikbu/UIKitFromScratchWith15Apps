//
//  ViewController.swift
//  UpDownGame
//
//  Created by 이승민 on 9/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    // 컴퓨터가 랜덤으로 숫자 선택
    var comNumber = Int.random(in: 1...10)
    
    // 내가 선택한 숫자를 담는 변수
    //var myNumber: Int = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) 메인레이블에 "선택하세요"
        mainLabel.text = "선택하세요"
        
        // 2) 숫자 레이블은 "" (빈 문자열)
        numberLabel.text = ""
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // 1) 버튼 숫자 가져오기
        guard let numString = sender.currentTitle else { return }
        
        // 2) 숫자 레이블이 변하도록 (숫자에 따라)
        numberLabel.text = numString
        
        
        // 3) 선택한 숫자를 변수에다가 저장 (선택)
        //guard let num = Int(numString) else { return }
        //myNumber = num
        
    }
    
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        guard let myNumString = numberLabel.text,
              let myNumber = Int(myNumString) else { return }

        
        
        // 1) 컴퓨터의 숫자와 내가 선택한 숫자를 비교 UP/DOWN/BINGO (메인레이블)
        if comNumber > myNumber {
            mainLabel.text = "Up"
        } else if comNumber < myNumber {
            mainLabel.text = "Down"
        } else {
            mainLabel.text = "Bingo👍"
        }
        
    }
    

    @IBAction func resetButtonTapped(_ sender: UIButton) {
        mainLabel.text = "선택하세요"
        numberLabel.text = ""
        comNumber = Int.random(in: 1...10)
    }
}

