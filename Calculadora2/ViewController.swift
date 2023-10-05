//
//  ViewController.swift
//  Calculadora2
//
//  Created by Carolina Bortoli M.S on 14/09/2023.
//

import UIKit

class ViewController: UIViewController {
    var operationType: OperationType?
    enum OperationType {
        case isSoma
        case isSubtract
        case isMultiply
        case isDivide
    }
    
    @IBOutlet weak var firstnumbertextfield: UITextField!
    @IBOutlet weak var secondnumbertextfield: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var operatorsellectedlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        operatorsellectedlabel.text = ""
        result.text = ""
    }
    
    @IBAction func addclicked(_ sender: Any) {
        operatorsellectedlabel.text = "+"
        operationType = .isSoma
    }
    
    @IBAction func subtractionclicked(_ sender: Any) {
        operatorsellectedlabel.text = "-"
        operationType = .isSubtract
    }
    
    @IBAction func multiplyclicked(_ sender: Any) {
        operatorsellectedlabel.text = "x"
        operationType = .isMultiply
    }
    
    @IBAction func divisionclicked(_ sender: Any) {
        operatorsellectedlabel.text = "÷"
        operationType = .isDivide
    }
    
    @IBAction func calculatebutton(_ sender: Any) {
        let firstNumber = Double(firstnumbertextfield.text ?? "") ?? 0
        let secondNumber = Double(secondnumbertextfield.text ?? "") ?? 0
        var total: Double?
        
        switch operationType {
        case .isSoma:
            total = firstNumber + secondNumber
        case .isSubtract:
            total = firstNumber - secondNumber
        case .isMultiply:
            total = firstNumber * secondNumber
        case .isDivide:
            total = firstNumber / secondNumber
        case .none:
            total = 0
        }
        result.text = String(format: "%.2f", total ?? 0)
    }
}

