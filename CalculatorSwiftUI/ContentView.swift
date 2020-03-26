//
//  ContentView.swift
//  CalculatorSwiftUI
//
//  Created by Ahmed on 3/25/20.
//  Copyright © 2020 Ahmed,ORG. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var value = "0"
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.black)
                .edgesIgnoringSafeArea(.all)
            VStack{
                ResultView()
                KeyPadView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
