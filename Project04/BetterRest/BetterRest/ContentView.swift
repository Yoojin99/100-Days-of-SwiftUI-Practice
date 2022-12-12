//
//  ContentView.swift
//  BetterRest
//
//  Created by NHN on 2022/12/12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sleepAmount: Double = 8.0
    
    var body: some View {
        VStack {
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
