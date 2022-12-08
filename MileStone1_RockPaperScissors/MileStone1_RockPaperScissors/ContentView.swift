//
//  ContentView.swift
//  MileStone1_RockPaperScissors
//
//  Created by NHN on 2022/12/08.
//

import SwiftUI

enum RPS {
    case rock, paper, scissor
}

struct ContentView: View {
    @State private var systemChoice: RPS = .rock
    @State private var playerChoice: RPS = .rock
    
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
        ContentView()
    }
}
