//
//  main.swift
//  RandomBingo
//
//  Created by 이승민 on 9/11/23.
//

import Foundation

var computerChoice = Int.random(in: 1...100)
var myChoice: Int = 0

while true {
    var userInput = readLine()
    
    guard let input = userInput, let number = Int(input) else {
        print("문제가 발생했습니다.")
        break
    }
    myChoice = number
    
//    if let input = userInput {
//        if let number = Int(input) {
//            myChoice = number
//        }
//    }
    
    //print(myChoice)
    
    if computerChoice > myChoice {
        print("Up")
    } else if computerChoice < myChoice {
        print("Down")
    } else {
        print("Bingo👍")
        break
    }
}
