//
//  FirstViewController.swift
//  Nav&TabCodebase
//
//  Created by 이승민 on 11/24/23.
//

import UIKit

class FirstViewController: UIViewController {
    
    private lazy var mainLabel: UILabel = {
        let lb = UILabel()
        lb.text = "Main"
        lb.textColor = .white
        lb.font = .boldSystemFont(ofSize: 40)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()

    // 로그인 여부에 관련된 참/거짓 저장하는 속성
    var isLoggedIn = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // ⭐️ 로그인이 되어있지 않다면 로그인화면 띄우기
        if !isLoggedIn {
            let vc = LoginViewController()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: false, completion: nil)
        }
    }
    
    func makeUI() {
        view.backgroundColor = .brown
        view.addSubview(mainLabel)
        
        NSLayoutConstraint.activate([
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        // (네비게이션바 설정관련) iOS버전 업데이트 되면서 바뀐 설정⭐️⭐️⭐️
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()  // 불투명으로
        //appearance.backgroundColor = .brown     // 색상설정
        
        //appearance.configureWithTransparentBackground()  // 투명으로
        
        navigationController?.navigationBar.tintColor = .blue
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        title = "Main"
        
    }
}
