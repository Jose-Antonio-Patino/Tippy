//
//  ViewController.swift
//  Tippy
//
//  Created by Jose Patino on 8/20/19.
//  Copyright © 2019 Jose Patino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onTap(_ sender: Any)
    {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any)
    {
        
        
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentages = [0.15,0.18,0.20]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = tip + bill
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
        
    }
}

