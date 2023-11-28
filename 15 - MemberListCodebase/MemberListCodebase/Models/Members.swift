//
//  Members.swift
//  MemberListCodebase
//
//  Created by 이승민 on 11/28/23.
//

import UIKit

protocol MemberDelegate: AnyObject { // 클래스에서만 채택될 수 있게
    func addNewMember(_ member: Member)
    func update(index: Int, _ member: Member)
}


struct Member {
    
    lazy var memberImage: UIImage? = {
        guard let name = name else {
            return UIImage(systemName: "person")
        }
        return UIImage(named: "\(name).png") ?? UIImage(systemName: "person")
    }()
    
    static var memberNumbers: Int = 0 // 타입 저장 속성
    
    var memberId: Int
    var name: String?
    var age: Int?
    var phone: String?
    var address: String?
    
    init(name: String?, age: Int?, phone: String?, address: String?) {
        
        self.memberId = Member.memberNumbers
        
        self.name = name
        self.age = age
        self.phone = phone
        self.address = address
        
        Member.memberNumbers += 1
    }
}

