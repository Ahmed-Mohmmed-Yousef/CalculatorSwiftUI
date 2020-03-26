//
//  KeyPad.swift
//  CalculatorSwiftUI
//
//  Created by Ahmed on 3/26/20.
//  Copyright © 2020 Ahmed,ORG. All rights reserved.
//

import SwiftUI

struct KeyPadView: View {
    @EnvironmentObject var calcVM: CalculatorVM
    var body: some View{
        let keys: [[Key]] = calcVM.getKeys()
        return VStack(spacing: 20) {
            ForEach(0 ..< keys.count){ index in
                HStack(spacing: 10){
                    ForEach(0 ..< keys[index].count){ innerIndx in
                        KeyView(key: keys[index][innerIndx])
                    }
                }
            }
        }
    }
}

