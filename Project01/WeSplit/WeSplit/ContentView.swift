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
    @State private var checkAmount: Double = 0.0
    @State private var numberOfPeoplePickerIndex: Int = 2
    @State private var tipPercentage: Int = 20
    
    @FocusState private var amountIsFocused: Bool
    
    private var numberOfPeople: Double {
        return Double(numberOfPeoplePickerIndex) + 2
    }
    
    private var totalAmount: Double {
        let tipAmount: Double = checkAmount / 100 * Double(tipPercentage)
        
        return checkAmount + tipAmount
    }
    
    private var totalPerPerson: Double {
        return totalAmount / numberOfPeople
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    if #available(iOS 16, *) {
                        TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                            .keyboardType(.decimalPad)
                            .focused($amountIsFocused)
                        
                        Picker("Number of people", selection: $numberOfPeoplePickerIndex) {
                            ForEach(2..<100) {
                                Text("\($0) people")
                            }
                        }
                    } else {
                        TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                            .keyboardType(.decimalPad)
                            .focused($amountIsFocused)

                        
                        Picker("Number of people", selection: $numberOfPeoplePickerIndex) {
                            ForEach(2..<100) {
                                Text("\($0) people")
                            }
                        }
                    }
                }
                
                Section {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0..<101) {
                            Text($0, format: .percent)
                        }
                    }
                } header: {
                    Text("How much tip do you want to leave?")
                }
                
                Section {
                    if #available(iOS 16, *) {
                        Text(totalAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    } else {
                        Text(totalAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                    }
                } header: {
                    Text("Total amount for check")
                }
                
                Section {
                    if #available(iOS 16, *) {
                        Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    } else {
                        Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                    }
                } header: {
                    Text("Amount per person")
                }
            }
            .navigationTitle("WeSplit")
            // view를 위한 toolbar item을 명시할 수 있게 한다. 이 아이템은 화면 여러 곳에 나타날 수 있다. (상단의 Navigation bar, 하단의 toolbar 영역 등)
            .toolbar {
                // 특정 영역에 하나 이상의 버튼을 보여줄 수 있게 한다. 여기서 toolbar는 키보드에 붙여져 있는 영역이어서 키보드와 함께 나타났다가 사라진다.
                ToolbarItemGroup(placement: .keyboard) {
                    // 유동적인 여백 공간으로 spacer를 두면 다른 뷰들을 한 쪽으로 밀어버린다.
                    // 여기에서는 toolbar의 첫 번째로 spacer를 뒀기 때문에 Done 버튼이 오른쪽으로 밀리게 된다.
                    Spacer()
                    
                    Button("Done") {
                        amountIsFocused = false
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
