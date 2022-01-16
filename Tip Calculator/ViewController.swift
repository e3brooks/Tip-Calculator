//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Elisa Brooks on 1/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var peopleLabel: UITextField!
    @IBOutlet weak var splitTotalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Split Bill
        let people = Double(peopleLabel.text!) ?? 1
        
        // Get total tip by mutliplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let splitTotal = total / people
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount Label
        totalLabel.text = String(format: "$%.2f", total)
        // Update Split Total Amount Label
        splitTotalLabel.text = String(format: "$%.2f", splitTotal)
    }
    
}

