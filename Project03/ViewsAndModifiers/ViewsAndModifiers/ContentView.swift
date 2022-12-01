//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by NHN on 2022/12/01.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText: Bool = false
    
    var body: some View {
        Button("Hello World") {
            useRedText.toggle()
        }
        .foregroundColor(useRedText ? .red : .blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
