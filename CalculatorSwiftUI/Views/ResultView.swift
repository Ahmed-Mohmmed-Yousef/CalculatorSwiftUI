//
//  ResultView.swift
//  CalculatorSwiftUI
//
//  Created by Ahmed on 3/26/20.
//  Copyright © 2020 Ahmed,ORG. All rights reserved.
//

import SwiftUI

struct ResultView: View {
    var value: String
    var body: some View{
        VStack {
            Spacer()
            HStack{
                Spacer()
                Text(self.value)
                    .foregroundColor(.white)
                    .font(.system(size: 90))
                    .padding(.trailing, 30)
            }
        }
    }
}
