//
//  CalculatorVM.swift
//  CalculatorSwiftUI
//
//  Created by Ahmed on 3/26/20.
//  Copyright © 2020 Ahmed,ORG. All rights reserved.
//

import SwiftUI

class CalculatorVM: ObservableObject {
    @Published var result: String = "0"
    @Published var fontSize: CGFloat = 90
    var numberFormatter = NumberFormatter()
    var unformattedNumberValue = "0"
    
    init() {
        self.numberFormatter.usesGroupingSeparator = true
        self.numberFormatter.numberStyle = .decimal
        self.numberFormatter.locale = Locale.current
    }
    
    func getFontSize(){
        switch self.unformattedNumberValue.count {
        case 7:
            fontSize = 80
        case 8:
            fontSize = 70
        case 9:
            fontSize = 60
        default:
            fontSize = 90
        }
    }
    
    func handelKeyPress(key: Key){
        
        switch key.lable {
        case "AC":
            self.result = "0"
            self.unformattedNumberValue = "0"
        case "C":
            self.result = "0"
            self.unformattedNumberValue = "0"
        default:
            self.handelNumberSelection(lable: key.lable)
        }
        self.getFontSize()
    }
    
    func handelNumberSelection(lable: String){
        if(self.unformattedNumberValue.count == 0 || self.unformattedNumberValue.count < 9){
            self.unformattedNumberValue = self.unformattedNumberValue == "0"
                ? lable : self.unformattedNumberValue + lable
            self.result = self.formatNumber(value: self.unformattedNumberValue)
        } else {
            
        }
    }
    
    func formatNumber(value: String) -> String{
        var formattedValue = value
        if let doubleValue = Double(formattedValue) {
            formattedValue = self.numberFormatter.string(from: NSNumber(value: doubleValue)) ?? value
        }
        return formattedValue
    }
    
    func getKeys() -> [[Key]] {
        let cancel = self.result == "0" ? "AC" : "C"
        
        return [
            [
                Key(lable: cancel, color: Color.gray, lableColor: Color.red),
                Key(lable: "+/-", color: Color.gray, lableColor: Color.black, type: KeyType.Operator),
                Key(lable: "%", color: Color.gray, lableColor: Color.black, type: KeyType.Operator),
                Key(lable: "/", color: Color.gray, lableColor: Color.black, type: KeyType.Operator),
            ],
            [
                Key(lable: "7"),
                Key(lable: "8"),
                Key(lable: "9"),
                Key(lable: "*", color: Color.orange, lableColor: Color.black, type: KeyType.Operator),
            ],
            [
                Key(lable: "4"),
                Key(lable: "5"),
                Key(lable: "6"),
                Key(lable: "-", color: Color.orange, lableColor: Color.black, type: KeyType.Operator),
            ],
            [
                Key(lable: "1"),
                Key(lable: "2"),
                Key(lable: "3"),
                Key(lable: "+", color: Color.orange, lableColor: Color.black, type: KeyType.Operator),
            ],
            [
                Key(lable: "0"),
                Key(lable: "."),
                Key(lable: "=", color: Color.orange, lableColor: Color.black, type: KeyType.Operator),
            ]
        ]
    }
}
