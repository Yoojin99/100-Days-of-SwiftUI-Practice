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
    // 학생들 이름
    let studentNames: [String] = ["영희", "철수", "춘배"]
    // 현재 선택된 학생 이름
    @State private var selectedStudentName: String = "춘배"
    
    var body: some View {
        NavigationView {
            Form {
                // 사용자가 선택할 수 있게 하고, two-way binding을 써서 선택된 값을 화면에 보여주면서 선택된 값을 업데이트 한다.
                Picker("Select your student", selection: $selectedStudentName) {
                    // 모든 학생 이름을 반복해서 텍스트 뷰로 만든다.
                    // id: \.self는 SwiftUI가 화면에 있는 모든 뷰들을 각기 다른 뷰로 식별해서 뭔가가 변할때 감지할 수 있게 하기 위해 사용한다.
                    ForEach(studentNames, id: \.self) {
                        Text($0)
                    }
                }
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
