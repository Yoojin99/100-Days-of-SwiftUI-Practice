//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by NHN on 2022/12/01.
//

import SwiftUI

struct ContentView: View {
    var text1: some View {
        Text("Hi")
    }
    let text2 = Text("There")
    
    var body: some View {
        VStack {
            text1
                .foregroundColor(.red)
            text2
                .foregroundColor(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
