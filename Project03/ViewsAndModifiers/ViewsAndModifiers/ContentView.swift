//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by NHN on 2022/12/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("tap me") {
            print(type(of: self.body))
        }
        
        Button("another button") {
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
