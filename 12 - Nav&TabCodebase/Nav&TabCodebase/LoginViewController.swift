//
//  LoginViewController.swift
//  Nav&TabCodebase
//
//  Created by 이승민 on 11/24/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    private lazy var loginButton: UIButton = {
        let bt = UIButton(type: .custom)
        bt.backgroundColor = .systemTeal
        bt.setTitle("Login", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return bt
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        makeUI()
    }
    
    func makeUI() {
        view.backgroundColor = .brown
        view.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            loginButton.widthAnchor.constraint(equalToConstant: 200),
            loginButton.heightAnchor.constraint(equalToConstant: 60),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }
    
    @objc func loginButtonTapped() {
        
        // 전화면의 isLoggedIn속성에 접근하기 ⭐️
        if let presentingVC = presentingViewController { // 옵셔널 바인딩
            let tabBarCon = presentingVC as! UITabBarController   // 탭바에 접근하기
            let nav = tabBarCon.viewControllers?[0] as! UINavigationController  // 네비게이션바에 접근하기
            let firstVC = nav.viewControllers[0] as! FirstViewController  // FirstVC에 접근하기
            firstVC.isLoggedIn.toggle()  // 로그인 되었다고 상태 변화시키기 (실제 앱에서 이렇게 구현할 일은 없음)
        }
        
        dismiss(animated: true, completion: nil)
    }
}
