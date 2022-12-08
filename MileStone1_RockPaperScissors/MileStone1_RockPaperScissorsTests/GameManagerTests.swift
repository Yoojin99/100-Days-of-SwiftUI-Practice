//
//  GameManagerTests.swift
//  GameManagerTests
//
//  Created by NHN on 2022/12/08.
//

import XCTest
@testable import MileStone1_RockPaperScissors

final class GameManagerTests: XCTestCase {
    
    var gameManager: GameManager!

    override func setUpWithError() throws {
        try super.setUpWithError()
        
        gameManager = RockPaperScissorsGameManager()
    }

    override func tearDownWithError() throws {
        gameManager = nil
        
        try super.tearDownWithError()
    }
    
    func test_userChooseCorrect() {}
    func test_userChooseWrong() {}
    func test_gameEnd() {}
}
