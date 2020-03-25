//
//  Key.swift
//  CalculatorSwiftUI
//
//  Created by Ahmed on 3/26/20.
//  Copyright © 2020 Ahmed,ORG. All rights reserved.
//

import Foundation
import SwiftUI

enum KeyType{
    case Number
    case Operator
}

var operatorSempols: [String:String] = [
    "+"     : "plus",
    "-"     : "minus",
    "*"     : "multiply",
    "/"     : "divide",
    "+/-"   : "plus.slash.minus",
    "%"     : "percent",
    "="     : "equal"
    
]

struct Key: Identifiable {
    var id: UUID = UUID()
    var lable: String
    var color: Color = Color.secondary
    var lableColor: Color = .white
    var type: KeyType = .Number
    
}
