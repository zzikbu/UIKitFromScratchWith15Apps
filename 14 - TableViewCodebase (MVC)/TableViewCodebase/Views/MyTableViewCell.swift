//
//  MyTableViewCell.swift
//  TableViewCodebase
//
//  Created by 이승민 on 11/25/23.
//

import UIKit

final class MyTableViewCell: UITableViewCell {

    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let productNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()

    let productPriceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.distribution  = .fill
        sv.alignment = .fill
        sv.spacing = 8
        return sv
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        setupStackView()
        
        // 셀 오토레이아웃 일반적으로 생성자에서 잡으면 됨 ⭐️⭐️⭐️
        setConstraints()
    }
    
    func setupStackView() {
        
        // self.contentView.addSubview로 잡는게 더 정확함 ⭐️
        // (cell은 기본뷰로 contentView를 가지고 있기 때문)
        self.contentView.addSubview(mainImageView)
        self.contentView.addSubview(stackView)

        
        // 스택뷰 위에 뷰들 올리기
        stackView.addArrangedSubview(productNameLabel)
        stackView.addArrangedSubview(productPriceLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // 오토레이아웃 재계산 시점 (뷰가 변하는 경우) ===> 일반적으로 생성자에서 잡으면 됨 ⭐️⭐️⭐️
//    override func updateConstraints() {
//        setConstraints()
//        super.updateConstraints()
//    }
    
    func setConstraints() {
        setMainImageViewConstraints()
        setProductNameLabelConstraints()
        setStackViewConstraints()
    }
    
    func setMainImageViewConstraints() {
        
        NSLayoutConstraint.activate([
            mainImageView.heightAnchor.constraint(equalToConstant: 100),
            mainImageView.widthAnchor.constraint(equalToConstant: 100),
            
            // self.leadingAnchor로 잡는 것보다 self.contentView.leadingAnchor로 잡는게 더 정확함 ⭐️
            // (cell은 기본뷰로 contentView를 가지고 있기 때문)
            mainImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            mainImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor)
        ])
    }
    
    func setProductNameLabelConstraints() {
        productNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            productNameLabel.heightAnchor.constraint(equalToConstant: 22)
        ])
    }
    
    func setStackViewConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: mainImageView.trailingAnchor, constant: 15),
            
            // self.trailingAnchor로 잡는 것보다 self.contentView.trailingAnchor로 잡는게 더 정확함 ⭐️
            // (cell은 기본뷰로 contentView를 가지고 있기 때문)
            stackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: self.mainImageView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.mainImageView.bottomAnchor)
        ])
    }
}
