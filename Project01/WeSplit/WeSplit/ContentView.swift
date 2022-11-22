//
//  ContentView.swift
//  WeSplit
//
//  Created by NHN on 2022/11/22.
//
// Contians the initial user interface (UI).

import SwiftUI

/// - description: SwiftUI의 View protocol 채택. View protocol은 화면에 무언가를 그리기 위해 꼭 채택해야 하는 기본 프로토콜이다. UIKit의 UIView와 같은 역할인듯.
struct ContentView: View {
    /// View protocol의 유일한 requirement
    var body: some View {
        Form {
            Section {
                Text("Hello, world!")
            }
            
            Section {
                Text("Hello, world!")
                Text("Hello, world!")
            }
        }
    }
    
    // body 외에도 다른 프로퍼티, 메서드를 추가할 수 있다.
}

// 코드와 함께 UI 디자인의 미리보기를 보여준다.
// 오른쪽에 preview가 보여지는 곳을 canvas라 한다. Canvas는 자동으로 기기 중 하나를 선택하는데, Xcode window의 기기에서 원하는 기기를 선택해서 지정할 수 있다.
// 앱스토어에 업로드되는 최종 앱을 구성하지는 않고, Xcode에서만 사용할 수 있음
// Canvas의 preview가 자주 멈추는데, 이럴 때 Option + Cmd + P를 눌러서 다시 재개할 수 있다.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
