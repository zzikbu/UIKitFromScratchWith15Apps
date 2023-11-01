//
//  ViewController.swift
//  FirstNewApp
//
//  Created by 이승민 on 11/1/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    weak var timer: Timer?
    var number = 0

    // 앱에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurUI() // 보통 함수로 깔끔하게
 
    }

    func configurUI() {
        mainLabel.text = "초를 선택하세요"
        slider.value = 0.5
    }
    
    
    // 슬라이더 값이 변할 때마다 이 함수 호출
    @IBAction func sliderChanged(_ sender: UISlider) {
        // 슬라이더의 벨류값을 가지고 메인레이블의 텍스트를 셋팅
        number = Int(sender.value * 60)
        mainLabel.text = "\(number) 초"
    }
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        // 1초씩 지나갈 때마다 무언가를 실행
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(doSomethingAfter1Second), userInfo: nil, repeats: true)
        
//        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] _ in
//            // 반복을 하고 싶은 코드
//            
//            if number > 0 {
//                number -= 1
//                // 슬라이더 줄이기
//                // 레이블표시 다시 셋팅
//                slider.value = Float(number) / Float(60)
//                mainLabel.text = "\(number) 초"
//                
//                
//            } else {
//                number = 0
//                mainLabel.text = "초를 선택하세요"
//                timer?.invalidate() // 타이머 비활성화
//                
//                // 소리 출력
//                AudioServicesPlayAlertSound(SystemSoundID(1323))
//            }
//        }
    }
    
    @objc func doSomethingAfter1Second() {
        if number > 0 {
            number -= 1
            // 슬라이더 줄이기
            // 레이블표시 다시 셋팅
            slider.value = Float(number) / Float(60)
            mainLabel.text = "\(number) 초"
            
            
        } else {
            number = 0
            mainLabel.text = "초를 선택하세요"
            timer?.invalidate() // 타이머 비활성화
            
            // 소리 출력
            AudioServicesPlayAlertSound(SystemSoundID(1323))
        }
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 초기화 셋팅
        mainLabel.text = "초를 선택하세요"
        slider.setValue(0.5, animated: true) // 슬라이더 가운데로
        number = 0
        timer?.invalidate() // 타이머 비활성화
        
    }
    

}
