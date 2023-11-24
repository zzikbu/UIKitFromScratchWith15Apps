//
//  DataManager.swift
//  TableViewCodebase
//
//  Created by 이승민 on 11/25/23.
//

import UIKit

class DataManager {
    private var productDataArray: [Product] = []
    
    func makeProductData() {
        productDataArray = [
            Product(productImage: UIImage(named: "airpods.png"), productName: "에어팟프로", productPrice: "25만원"),
            Product(productImage: UIImage(named: "airpodsmax.png"), productName: "에어팟맥스", productPrice: "70만원"),
            Product(productImage: UIImage(named: "applepencil.png"), productName: "애플펜슬", productPrice: "10만원"),
            Product(productImage: UIImage(named: "applewatch.png"), productName: "애플워치", productPrice: "35만원"),
            Product(productImage: UIImage(named: "ipad.png"), productName: "아이패드", productPrice: "110만원"),
            Product(productImage: UIImage(named: "iphone.png"), productName: "아이폰", productPrice: "160만원"),
            Product(productImage: UIImage(named: "macbook.png"), productName: "맥북", productPrice: "260만원"),
            Product(productImage: UIImage(named: "macmini.png"), productName: "맥미니", productPrice: "70만원")
        ]
    }
    
    func getProductData() -> [Product] {
        return productDataArray
    }
}
