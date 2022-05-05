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
    var isTypetingDigit: Bool = false
    
    // MARK: - IBAction
    @IBAction func performOperation(_ sender: UIButton) {
        guard let operation = sender.titleLabel?.text else {return
        }
        if operation == "π"{
            display.text = String(Double.pi)
        }
        isTypetingDigit = false
    }
        
        @IBAction func touchDigit(_ sender: UIButton) {
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


