//
//  GameManager.swift
//  MileStone1_RockPaperScissors
//
//  Created by NHN on 2022/12/08.
//

import Foundation

protocol GameManager {
    associatedtype PlayerChoice
    
    /// user score
    var score: Int { get set }
    /// count of how many turns did user played game
    var steps: Int { get set }
    
    func playSystemTurn()
    func playUserTurn(choice: PlayerChoice)
    
    func userLose()
    func userWon()
    
    func finishTurn()
    func reset()
}
