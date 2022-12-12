//
//  ContentView.swift
//  MileStone1_RockPaperScissors
//
//  Created by NHN on 2022/12/08.
//

import SwiftUI

struct ContentView: View {
    let gameManager: RockPaperScissorsGameManager
    
    @State private var showAlert: Bool = false
    @State private var didGameEnd: Bool = false
    
    var body: some View {
        ZStack {
            GeometryReader { geo in
                RadialGradient(stops: [
                    Gradient.Stop(color: .green, location: 0.5),
                    Gradient.Stop(color: .yellow, location: 0.5)
                ], center: .top, startRadius: 0, endRadius: geo.size.height)
            }
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Rock, Paper, Scissors")
                    .font(.title.bold())
                    .foregroundColor(.white)
                
                VStack {
                    Text("\(gameManager.systemChoice.rawValue)")
                        .font(.title)
                        .frame(width: 200, height: 200)
                        .background(.regularMaterial)
                        .cornerRadius(20)
                    Text("Tap to \(gameManager.goal.rawValue)")
                        .font(.body)
                        .foregroundColor(.black)
                    HStack {
                        ForEach(RockPaperScissorsGameManager.Choice.allCases, id: \.rawValue) { choice in
                            Button {
                                userPlayedTurn(choice: choice)
                            } label: {
                                Text(choice.rawValue)
                                    .frame(width:100, height:100)
                                    .background(.regularMaterial)
                                    .cornerRadius(20)
                                    .foregroundColor(.black)
                            }

                        }
                    }
                }
                .alert(gameManager.isUserRight ? "Right" : "Wrong", isPresented: $showAlert) {
                    Button("Continue", action: startNewTurn)
                }
                .alert("Game End", isPresented: $didGameEnd) {
                    Button("OK") {
                        
                    }
                }
                
                Spacer()
                Spacer()
                
                Text("Score : \(gameManager.score)")
                    .font(.body)
                    .foregroundColor(.white)
                
                Spacer()
            }
            .padding()
        }
    }
    
    private func userPlayedTurn(choice: RockPaperScissorsGameManager.Choice) {
        gameManager.playUserTurn(choice: choice)
        
        if gameManager.steps == 10 {
            didGameEnd = true
            gameManager.reset()
            return
        }
        
        showAlert = true
    }
    
    private func startNewTurn() {
        gameManager.playSystemTurn()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let gameManager: RockPaperScissorsGameManager = RockPaperScissorsGameManager()
        return ContentView(gameManager: gameManager)
    }
}
