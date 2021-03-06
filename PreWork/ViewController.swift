//
//  ViewController.swift
//  PreWork
//
//  Created by 9527 on 11/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
    }
    


    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2F", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
}

