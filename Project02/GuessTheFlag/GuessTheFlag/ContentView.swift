//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by NHN on 2022/11/28.
//

import SwiftUI

struct ContentView: View {
    // 화면에 출력할 수 있는 어떤 view를 받기를 기대한다. navigation view, form, text view 등등. View 프로토콜을 충족하기만 하면 됨
    var body: some View {
        LinearGradient(
            gradient: Gradient(stops: [
                .init(color: .white, location: 0.45),
                .init(color: .black, location: 0.55)
            ]),
            startPoint: .top,
            endPoint: .bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
