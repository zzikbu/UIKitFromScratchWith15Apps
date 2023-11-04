//
//  ViewController.swift
//  NextVC
//
//  Created by Allen H on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 1) 코드로 화면 이동 (다음화면이 코드로 작성되어있을때만 가능한 방법)
    @IBAction func codeNextButtonTapped(_ sender: UIButton) {
        
        let firstVC = FirstViewController()
        
        firstVC.someString = "first 데이터 전달 테스트 !!" // 데이터 전달
        
        firstVC.modalPresentationStyle = .fullScreen // 전체화면으로 꽉차게
        present(firstVC, animated: true, completion: nil) // 다음 화면으로
        
    }
    
    
    // 2) 코드로 스토리보드 객체를 생성해서, 화면 이동
    @IBAction func storyboardWithCodeButtonTapped(_ sender: UIButton) {
        
        guard let secondVC = storyboard?.instantiateViewController(identifier: "secondVC") as? SecondViewController else { return }
        
        secondVC.someString = "second 데이터 전달 테스트 !!"
        
//        secondVC.mainLabel.text = "second 데이터 전달 테스트 !!"
//        코드랑 스토리보드랑 연결되기 전이라 에러남!! (mainLabel 접근 불가)
        
        present(secondVC, animated: true, completion: nil) // 다음 화면으로
        
    }
    
    
    
    // 3) 스토리보드에서의 화면 이동(간접 세그웨이)
    @IBAction func storyboardWithSegueButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toThirdVC", sender: self) // 다음 화면으로
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toThirdVC" {
            let thirdVC = segue.destination as! ThirdViewController
            
            // 데이터 전달
            thirdVC.someString = "third 데이터 전달 테스트 !!"
        }
        
        if segue.identifier == "toFourthVC" {
            let fourthVC = segue.destination as! FourthViewController
            
            // 데이터 전달
            fourthVC.someString = "fourth 데이터 전달 테스트 !!"
        }
    }
    
    // 직접 세그웨이
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        let num = 5
        
        if num > 3 {
            return true
        } else {
            return false
        }
    }
}
