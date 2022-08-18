//
//  NumberBaseball - main.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation


func generateNumber() -> [Int] {
    var remainingNumbers = Array(1...9)
    var randomNumbers: [Int] = []
    while randomNumbers.count < 3 {
        let number = Int(arc4random_uniform(UInt32(remainingNumbers.count)))
        var selectedNumber = remainingNumbers[number]
        if selectedNumber != 0 {
            randomNumbers.append(selectedNumber)
        }
        remainingNumbers[number] = 0
    }
    return randomNumbers
}

func getUserBall(userNumbers: [Int]) {
//    let userNumberList = readLine()?.split(separator: " ").map({ number in
//        return Int(number)
//    })
    print("임의의 수 : ", terminator: "")
    for num in userNumbers {
        print(num, terminator: " ")
    }
}

func compareNumbers() -> Int {
    remaining -= 1
    let userNumbers = generateNumber()
    getUserBall(userNumbers: userNumbers)
    
    var strike = 0
    var ball = 0
    for (idx, computerNum) in computerNumbers.enumerated() {
        if computerNum == userNumbers[idx] {
            strike += 1
        } else {
            ball += 1
        }
    }
    print(" ")
    print("\(strike) 스트라이크, \(ball) 볼")
    print("남은 기회: \(remaining)")
    
    return remaining
}
var remaining = 9
let computerNumbers = generateNumber()

while remaining > 0 {
    remaining = compareNumbers()
}

