//
//  SecondViewController.swift
//  Nav&TabCodebase
//
//  Created by 이승민 on 11/24/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    private lazy var mainLabel: UILabel = {
        let lb = UILabel()
        lb.text = "Search"
        lb.textColor = .white
        lb.font = .boldSystemFont(ofSize: 40)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .orange
        
        makeUI()
    }
        
    func makeUI() {
        view.backgroundColor = .brown
        view.addSubview(mainLabel)
        
        NSLayoutConstraint.activate([
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
