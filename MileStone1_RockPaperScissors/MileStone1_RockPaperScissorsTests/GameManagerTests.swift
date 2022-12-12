//
//  GameManagerTests.swift
//  GameManagerTests
//
//  Created by NHN on 2022/12/08.
//

import XCTest
@testable import MileStone1_RockPaperScissors

final class GameManagerTests: XCTestCase {
    
    var gameManager: (any GameManager)!

    override func setUpWithError() throws {
        try super.setUpWithError()
        
        gameManager = RockPaperScissorsGameManager()
    }

    override func tearDownWithError() throws {
        gameManager = nil
        
        try super.tearDownWithError()
    }
    
    func test_userChooseCorrect() {
        let currentScore: Int = gameManager.score
        
        gameManager.playSystemTurn()
        gameManager.userWon()
        
        XCTAssertEqual(currentScore + 1, gameManager.score)
    }
    
    func test_userChooseWrong() {
        let currentScore: Int = gameManager.score
        
        gameManager.playSystemTurn()
        gameManager.userLose()
        
        XCTAssertEqual(currentScore, gameManager.score)
    }
    
    func test_gameEnd() {
        XCTAssertEqual(gameManager.steps, 0)
        
        // game ends after 10 steps
        for _ in stride(from: 0, to: 10, by: 1) {
            gameManager.playSystemTurn()
            gameManager.userWon()
            gameManager.finishTurn()
        }
        gameManager.reset()
        
        XCTAssertEqual(gameManager.steps, 0)
        XCTAssertEqual(gameManager.score, 0)
        
        // game ends after 10 steps
        for _ in stride(from: 0, to: 10, by: 1) {
            gameManager.playSystemTurn()
            gameManager.userLose()
            gameManager.finishTurn()
        }
        gameManager.reset()
        
        XCTAssertEqual(gameManager.steps, 0)
        XCTAssertEqual(gameManager.score, 0)
    }
}
