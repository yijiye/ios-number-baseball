//
//  NumberBaseball - main.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

func selectMenu() {
    print("1. 게임시작")
    print("2. 게임종료")
    print("원하는 기능을 선택해주세요 : ", terminator: "")
    guard let inputMenu = readLine() else {
        return
    }
    switch inputMenu {
    case "1":
        print("숫자 3개를 띄어쓰기로 구분하여 입력해주세요.")
        print("중복 숫자는 허용하지 않습니다.")
        startNumberBaseBall()
    case "2":
        print("게임종료")
    default :
        print("입력이 잘못되었습니다.")
    }
}

func creatRandomNumber() -> [Int] {
    var randomNumbers: [Int] = []
    var count: Int = 0
    
    while count < 3 {
        let randomNumber: Int = Int.random(in: 1...9)
        
        if !randomNumbers.contains(randomNumber) {
            randomNumbers.append(randomNumber)
            count += 1
        }
    }
    return randomNumbers
}

func checkBall(comparing: [Int], with: [Int]) -> Int {
    var ballCount: Int = 0
    
    for (index, value)  in with.enumerated() {
        if (comparing.contains(value)) && (with[index] != comparing[index]) {
            ballCount += 1
        }
    }
    return ballCount
}

func checkStrike(comparing: [Int], with: [Int]) -> Int {
    var strikeCount: Int = 0
    
    for (index, _) in comparing.enumerated() {
        if comparing[index] == with[index] {
            strikeCount += 1
        }
    }
    return strikeCount
}

func startNumberBaseBall() {
    let randomNumber: [Int] = creatRandomNumber()
    var lifeCount: Int = 9
    
    while lifeCount != 0 {
        let userInputNumber: [Int] = creatRandomNumber()
        print("임의의 수 : \(userInputNumber[0]) \(userInputNumber[1]) \(userInputNumber[2])")
        let strikeCount: Int = checkStrike(comparing: randomNumber, with: userInputNumber)
        if strikeCount == 3 {
            print("사용자 승리!")
            break
        }
        
        let ballCount: Int = checkBall(comparing: randomNumber, with: userInputNumber)
        print("\(strikeCount) 스트라이크, \(ballCount) 볼")
        lifeCount -= 1
        print("남은기회 : \(lifeCount)")
    }
    if lifeCount == 0 {
        print("컴퓨터 승리...!")
    }
}

startNumberBaseBall()
