//
//  ViewController.swift
//  RPSGame
//
//  Created by 이승민 on 9/11/23.
//

import UIKit

class ViewController: UIViewController {

    // 변수 / 속성
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    var comchoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
    
    var mychoice: Rps = Rps.rock
    
    
    
    // 함수 / 메서드
    // 앱의 화면에 들어오면 처음 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) 첫번째/두번째 이미쥬뷰에 준비(묵) 이미지를 띄워야 함
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        
        // 2) 첫번째/두번째 레이블에 "준비"라고 문자열을 띄워야 함
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
    }

    
    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        // 가위/바위/보를 선택해서 그 정보를 저장
        
        let title = sender.currentTitle!
        print(title)
        
        switch title {
        case "가위":
            mychoice = Rps.scissors
        case "바위":
            mychoice = Rps.rock
        case "보":
            mychoice = Rps.paper
        default:
            break
        }
    }
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        // 1) 컴퓨터가 랜덤 선택한 것을 이미지뷰에 표시
        // 2) 컴퓨터가 랜덤 선택한 것을 레이블에 표시
        switch comchoice {
        case Rps.rock:
            comImageView.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
        case Rps.paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
        case Rps.scissors:
            comImageView.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
        }
        
        // 3) 내가 선택한 것을 이미지뷰에 표시
        // 4) 내가 선택한 것을 레이블에 표시
        switch mychoice {
        case Rps.rock:
            myImageView.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "바위"
        case Rps.paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보"
        case Rps.scissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위"
        }
        
        
        // 5) 컴퓨터가 선택한 것과 내가 선택한 것을 비교해서 이겼는지/졌는지 판단/표시
        
        if comchoice == mychoice {
            mainLabel.text = "비겼다 🫤"
        } else if comchoice == .rock && mychoice == .paper {
            mainLabel.text = "이겼다 😛"
        } else if comchoice == .paper && mychoice == .scissors {
            mainLabel.text = "이겼다 😛"
        } else if comchoice == .scissors && mychoice == .rock {
            mainLabel.text = "이겼다 😛"
        } else {
            mainLabel.text = "졌다 😭"
        }
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        // 1) 컴퓨터가 다시 준비 이미지뷰에 표시
        // 2) 컴퓨터가 다시 준비 레이블에 표시
        comImageView.image = #imageLiteral(resourceName: "ready")
        comChoiceLabel.text = "준비"
        
        
        
        // 3) 내 선택 이미지뷰에도 준비 이미지 표시
        // 4) 내 선택 레이블에도 준비 문자열 표시
        myImageView.image = #imageLiteral(resourceName: "ready")
        myChoiceLabel.text = "준비"
        
        
        // 5) 메인 레이블 "선택하세요" 표시
        mainLabel.text = "선택하세요"
        
        // 6) 컴퓨터가 다시 랜덤 가위/바위/보를 선택하고 저장
        comchoice = Rps(rawValue: Int.random(in: 0...2))!
        
        
        
    }
    
}
