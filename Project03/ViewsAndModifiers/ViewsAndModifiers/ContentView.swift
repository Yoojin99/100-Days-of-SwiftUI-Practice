//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by NHN on 2022/12/01.
//

import SwiftUI

struct LargeBlue: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func largeBlue() -> some View {
        modifier(LargeBlue())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hi")
            .largeBlue()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
