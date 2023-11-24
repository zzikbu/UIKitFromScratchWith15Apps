//
//  DetailView.swift
//  TableViewCodebase
//
//  Created by 이승민 on 11/25/23.
//

import UIKit

final class DetailView: UIView {

    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    let productNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()

    let productPriceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.numberOfLines = 0
        return label
    }()
    
    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.distribution  = .fill
        sv.alignment = .center // (수직)가운데 정렬
        sv.spacing = 15
        return sv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupStackView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupStackView() {
        // 스택뷰 위에 뷰들 올리기
        stackView.addArrangedSubview(mainImageView)
        stackView.addArrangedSubview(productNameLabel)
        stackView.addArrangedSubview(productPriceLabel)
        
        // 뷰컨트롤러의 기본뷰 위에 스택뷰 올리기
        self.addSubview(stackView)
    }
    
    // 오토레이아웃 업데이트
    override func updateConstraints() {
        setConstraints()
        super.updateConstraints()
    }
    
    func setConstraints() {
        setMainImageViewConstraints()
        setProductNameLabelConstraints()
        setProductPriceLabelConstraints()
        setStackViewConstraints()
    }
    
    func setMainImageViewConstraints() {
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainImageView.heightAnchor.constraint(equalToConstant: 350),
            mainImageView.widthAnchor.constraint(equalToConstant: 350)
        ])
    }
    
    func setProductNameLabelConstraints() {
        productNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            productNameLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    func setProductPriceLabelConstraints() {
        productPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            productPriceLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    func setStackViewConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 100)
        ])
    }
}
