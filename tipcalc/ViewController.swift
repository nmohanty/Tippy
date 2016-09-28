//
//  ViewController.swift
//  tipcalc
//
//  Created by Namrata Mohanty on 9/19/16.
//  Copyright © 2016 MOS360. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numentered: String!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var billcell: UITextField!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var countControl: UISegmentedControl!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firstView.alpha = 1.0
        secondView.alpha = 0.0
        self.navigationItem.title = "TIPPY"
        billcell.becomeFirstResponder()
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        }
    
    
    @IBAction func onEditchanged(sender: AnyObject) {
        var numentered: Double {
            get {
                return ((billcell.text ?? "0") as NSString).doubleValue
            }
            set {
                billcell.text = String("%f", newValue)
            }
        }
        billField.text = String (format: "%g", numentered)

        
        firstView.alpha = 0.0
        billField.becomeFirstResponder()
        var origin = secondView.frame.origin
        
        
        UIView.animateWithDuration(0.3) {
            origin.y -= 190
            self.secondView.alpha = 1.0
            self.secondView.frame.origin = origin
            }
    }
    
    @IBAction func onTouch(sender: AnyObject) {
        print("\(__FUNCTION__) on change happened.")
        firstView.alpha = 0.0
        var origin = secondView.frame.origin
       
        UIView.animateWithDuration(0.3) {
            origin.y -= 190
            self.billField.becomeFirstResponder()
            self.secondView.alpha = 1.0
            self.secondView.frame.origin = origin
        }
    }
    
    
    @IBAction func calculateTip(sender: AnyObject) {
        let tipCount:[Double] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let tipPercentages = [0.18, 0.2, 0.25]

        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = tip + bill
        let share = total / tipCount[countControl.selectedSegmentIndex]
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", share)
        }
    
}

