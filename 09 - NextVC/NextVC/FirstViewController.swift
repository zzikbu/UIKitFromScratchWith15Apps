//
//  FirstViewController.swift
//  NextVC
//
//  Created by 이승민 on 11/4/23.
//

import UIKit

class FirstViewController: UIViewController {
    
    let mainLabel = UILabel()
    
    let backButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.orange
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(backbuttonTapped), for: .touchUpInside)
        return button
    }()
    
    // 데이터 전달 받을 변수, 일반적으로 옵셔널 선언
    var someString: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
        makeAutoLayout()
    }
    
    func setup() {
        mainLabel.text = someString // 옵셔널 바인딩 안해도 됨
        mainLabel.font = UIFont.systemFont(ofSize: 22)
        
        view.addSubview(mainLabel)
        view.addSubview(backButton)
        
        view.backgroundColor = .gray
    }
    
    func makeAutoLayout() {
        // 레이블 오토레이아웃
        mainLabel.translatesAutoresizingMaskIntoConstraints = false // 꺼주기
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // 버튼 오토레이아웃
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    
    @objc func backbuttonTapped() {
//        print("뒤로가기 버튼 눌렸음")
        dismiss(animated: true, completion: nil) // 이전 화면으로
    }
}
