//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by NHN on 2022/11/28.
//

import SwiftUI

struct ContentView: View {
    
    var countries: [String] = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    var correctAnswer = Int.random(in: 0...2)

    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("OK", role: .cancel) {}
        } message: {
            Text("Please read this.")
        }
    }
    
    func executeDelete() {
        print("Now deleting...")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
