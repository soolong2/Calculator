//
//  ViewController.swift
//  Calcuator
//
//  Created by so on 2022/05/03.
//

import UIKit

class CalcuatorViewController: UIViewController {
    //MARK: - IBOutlet
    @IBOutlet weak var display: UILabel!
    // MARK: - 변수들
    private var isTypetingDigit: Bool = false
    private var modal: Calculator = Calculator()
    private var displayValue: Double{
        get{
            guard let text = display.text else { return 0 }
            return Double(text) ?? 0
        }
        set{
            display.text = "\(newValue)"
        }
        
    }
    // MARK: - IBAction
    @IBAction private func performOperation(_ sender: UIButton) {
        guard let operation = sender.titleLabel?.text else {return
        }
        modal.setOperand(operand: displayValue)
        modal.performOperation(symbol: operation)
        displayValue = modal.result
        isTypetingDigit = false
    }
    
    @IBAction private func touchDigit(_ sender: UIButton) {
        guard let digit = sender.titleLabel?.text,
              let curentText = display.text else{
                  return
              }
        if isTypetingDigit {
            display.text = curentText + digit
        } else {
            display.text = digit
        }
        isTypetingDigit = true
    }
}

//콩나물국밥 뜨뜻하게 한사바리 먹고싶다


