//
//  RockPaperScissorsGameManager.swift
//  MileStone1_RockPaperScissors
//
//  Created by NHN on 2022/12/08.
//

import Foundation
import SwiftUI

class RockPaperScissorsGameManager: GameManager {
    enum Goal: String, CaseIterable {
        case win, lose
    }
    
    enum Choice: String, CaseIterable {        
        case rock, paper, scissor
    }
    
    var goal: Goal = .win
    var systemChoice: Choice = .rock
    var isUserRight: Bool = true
    
    var score: Int = 0
    var steps: Int = 0

    func playSystemTurn() {
        goal = Goal.allCases.randomElement()!
        systemChoice = Choice.allCases.randomElement()!
    }
    
    func playUserTurn(choice: Choice) {
        switch systemChoice {
        case .rock:
            switch goal {
            case .win: isUserRight = (choice == .paper)
            case .lose: isUserRight = choice == .scissor
            }
        case .scissor:
            switch goal {
            case .win: isUserRight = choice == .rock
            case .lose: isUserRight = choice == .paper
            }
        case .paper:
            switch goal {
            case .win: isUserRight = choice == .scissor
            case .lose: isUserRight = choice == .rock
            }
        }
        
        if isUserRight {
            userWon()
        } else {
            userLose()
        }
        
        finishTurn()
    }
    
    func userLose() {
    }
    
    func userWon() {
        score += 1
    }
    
    func finishTurn() {
        steps += 1
    }
    
    func reset() {
        score = 0
        steps = 0
    }
}
