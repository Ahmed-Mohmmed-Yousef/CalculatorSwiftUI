//
//  KeyView.swift
//  CalculatorSwiftUI
//
//  Created by Ahmed on 3/26/20.
//  Copyright © 2020 Ahmed,ORG. All rights reserved.
//

import SwiftUI

struct KeyView: View{
    var key: Key
    @Binding var value: String
    
    var body: some View{
        let width = (key.lable == "0" ? UIScreen.main.bounds.width / 2 : UIScreen.main.bounds.width / 4) - 10
        let height = (UIScreen.main.bounds.width / 4) - 10
        return Button(action: {
            self.value = self.value == "0" ? self.key.lable : self.value + self.key.lable
        }){
            RoundedRectangle(cornerRadius: width / 2)
            .foregroundColor(key.color)
            .frame(width: width, height: height, alignment: .center)
            .overlay(
                Group{
                    if key.type == .Number  {
                        Text(key.lable)
                            .foregroundColor(key.lableColor)
                            .font(.system(size: 40))
                            .padding(.trailing, self.key.lable == "0" ? width - 100 : 0)
                    } else {
                        Image(systemName: operatorSempols[key.lable]!)
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    }
                }
            )
        }
    }
}
