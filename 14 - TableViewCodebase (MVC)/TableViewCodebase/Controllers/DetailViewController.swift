//
//  DetailViewController.swift
//  TableViewCodebase
//
//  Created by 이승민 on 11/25/23.
//

import UIKit

final class DetailViewController: UIViewController {

    // MVC패턴을 위한 따로만든 뷰
    private let detailView = DetailView()
    
    // 전화면에서 Movie데이터를 전달 받기 위한 변수
    var productData: Product?
    
    override func loadView() {
        view = detailView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    private func setupUI() {
        detailView.mainImageView.image = productData?.productImage
        detailView.productNameLabel.text = productData?.productName
        detailView.productPriceLabel.text = productData?.productPrice
    }
    
}
