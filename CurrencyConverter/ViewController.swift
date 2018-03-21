//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Saleh Almozaai on 18/03/2018.
//  Copyright © 2018 Saleh Saeed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0

    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        inputTextField.delegate = self
        
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            updateData()
            return true
    }
        
    func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
            updateData()
    }
        
    }
    
    @IBAction func convertCurrency(_ sender: UIButton) {
        updateData()
    }
    
    @IBAction func clearCurrency(_ sender: UIButton) {
        inputTextField.text = ""
        poundLabel.text = "0.00"
        yenLabel.text = "0.00"
        euroLabel.text = "0.00"
        
    }
    
    func updateData() {
        if let amount = Double(inputTextField.text!) {
            dollarAmount = amount
        }
        
        poundLabel.text = "\(poundRate * dollarAmount)"
        yenLabel.text = "\(yenRate * dollarAmount)"
        euroLabel.text = "\(euroRate * dollarAmount)"
    }
    
}

