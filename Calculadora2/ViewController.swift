//
//  ViewController.swift
//  Calculadora2
//
//  Created by Carolina Bortoli M.S on 14/09/2023.
//

import UIKit

class ViewController: UIViewController {
    var isSoma: Bool = false
    var isSubtract: Bool = false
    var ismultiply: Bool = false
    var isdivide: bool = false
    
    @IBOutlet weak var firstnumbertextfield: UITextField!
    
    @IBOutlet weak var secondnumbertextfield: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var operatorsellectedlabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        operatorsellectedlabel.text = ""
        result.text = ""
        
        // Do any additional setup after loading the view.
    }

    @IBAction func addclicked(_ sender: Any) {
        operatorsellectedlabel.text = "+"
        isSoma = true
    }
    
    @IBAction func subtractionclicked(_ sender: Any) {
        operatorsellectedlabel.text = "-"
    }
    
    @IBAction func multiplyclicked(_ sender: Any) {
        operatorsellectedlabel.text = "x"
    }
    
    @IBAction func divisionclicked(_ sender: Any) {
        operatorsellectedlabel.text = "÷"
    }
    
    
    @IBAction func calculatebutton(_ sender: Any) {
        if isSoma == true { firstnumbertextfield.text + secondnumbertextfield.text}
    }
}

