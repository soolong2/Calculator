//
//  CalcuatorModel.swift
//  Calcuator
//
//  Created by so on 2022/05/05.
//

import Foundation

class Calculator {
    private var accumlator: Double =  0.0
    private var lastOperation: String?
    
    func setOperand(operand: Double) {
        if lastOperation == "+" {
            lastOperation = nil
            accumlator = accumlator + operand
        }else{
            accumlator = operand
        }
        
    }
    func performOperation(symbol: String) {
        switch symbol{
        case "π":
            accumlator = Double.pi
        case "√":
            accumlator = sqrt(accumlator)
        case "+":
            lastOperation = symbol
        default:
            break
        }
    }
    
    var result: Double{
        get{
            return accumlator
        }
    }
}

