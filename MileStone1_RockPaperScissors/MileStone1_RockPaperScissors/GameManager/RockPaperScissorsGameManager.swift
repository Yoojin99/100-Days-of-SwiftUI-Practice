//
//  RockPaperScissorsGameManager.swift
//  MileStone1_RockPaperScissors
//
//  Created by NHN on 2022/12/08.
//

import Foundation
import SwiftUI

class RockPaperScissorsGameManager: GameManager {
    enum Choice: CaseIterable {
        case rock, paper, scissor
    }
    
    @State var systemChoice: Choice = .rock
    
    var score: Int = 0
    var steps: Int = 0

    func playSystemTurn() {
        systemChoice = Choice.allCases.randomElement()!
    }
    
    func userLose() {
    }
    
    func userWon() {
        score += 1
    }
    
    func finishTurn() {
        steps += 1
        
        if steps == 10 {
            reset()
        }
    }
    
    func reset() {
        score = 0
        steps = 0
    }
}
