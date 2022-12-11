//
//  ContentView.swift
//  MileStone1_RockPaperScissors
//
//  Created by NHN on 2022/12/08.
//

import SwiftUI

struct ContentView: View {
    let gameManager: GameManager
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let gameManager: GameManager = RockPaperScissorsGameManager()
        return ContentView(gameManager: gameManager)
    }
}
