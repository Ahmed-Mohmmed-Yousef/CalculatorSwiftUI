//
//  ResultView.swift
//  CalculatorSwiftUI
//
//  Created by Ahmed on 3/26/20.
//  Copyright © 2020 Ahmed,ORG. All rights reserved.
//

import SwiftUI

struct ResultView: View {
    @EnvironmentObject var calcVM: CalculatorVM
    var body: some View{
        VStack {
            Spacer()
            HStack{
                Spacer()
                Text(self.calcVM.result)
                    .foregroundColor(.white)
                    .font(.system(size: calcVM.fontSize))
                    .padding(.trailing, 30)
            }
        }
    }
}
