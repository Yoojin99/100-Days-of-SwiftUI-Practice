//
//  MileStone1_RockPaperScissorsApp.swift
//  MileStone1_RockPaperScissors
//
//  Created by NHN on 2022/12/08.
//

import SwiftUI

@main
struct MileStone1_RockPaperScissorsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(gameManager: RockPaperScissorsGameManager())
        }
    }
}
