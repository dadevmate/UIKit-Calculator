//
//  ViewController.swift
//  UIKit Calculator
//
//  Created by Nethan on 8/3/23.
//

import UIKit

class ViewController: UIViewController {
    func evaluateEquation(_ equation: String) -> Double? {
        
        if equation.contains(".") {
            
            let modifiedEquation = equation.replacingOccurrences(of: "(\\d+\\.?\\d*)\\s*/\\s*(\\d+\\.?\\d*)", with: "(($1) / ($2))", options: .regularExpression)
            
            let expression = NSExpression(format: modifiedEquation)
     
            guard let result = expression.expressionValue(with: nil, context: nil) as? Double else {
                return nil
            }
            return result
            
        } else {

            let modifiedEquation = equation.replacingOccurrences(of: "(\\d+\\.?\\d*)\\s*/\\s*(\\d+\\.?\\d*)", with: "(($1.0) / ($2.0))", options: .regularExpression)
            
            let expression = NSExpression(format: modifiedEquation)
     
            guard let result = expression.expressionValue(with: nil, context: nil) as? Double else {
                return nil
            }
            return result
        }
     
    }

    @IBOutlet var NumLabel: UILabel!
 
    @IBOutlet var dotButton: UIButton!
    @IBOutlet var button0: UIButton!
    @IBOutlet var eqLabel: UILabel!
    @IBOutlet var button1: UIButton!
    
    @IBOutlet var button3: UIButton!
    
    @IBOutlet var button4: UIButton!
    
    @IBOutlet var button5: UIButton!
    
    @IBOutlet var delButton: UIButton!
    
    @IBOutlet var button6: UIButton!
    
    @IBOutlet var button7: UIButton!
    
    @IBOutlet var button8: UIButton!
    
    @IBOutlet var button9: UIButton!
    @IBOutlet var buttonPlus: UIButton!
    
    @IBOutlet var buttonMinus: UIButton!
    
    @IBOutlet var buttonDivide: UIButton!
    @IBOutlet var buttonMultiply: UIButton!
    
    @IBOutlet var buttonEqual: UIButton!
    @IBAction func button0Action(_ sender: Any) {
        eqLabel.text = (eqLabel.text ?? "") + "0"
        
    }
    
    @IBAction func button1Action(_ sender: Any) {
        eqLabel.text = (eqLabel.text ?? "") + "1"
    }
    
    @IBAction func button2Action(_ sender: Any) {
        eqLabel.text = (eqLabel.text ?? "") + "2"
    }
    
    
    @IBAction func button3Action(_ sender: Any) {
        eqLabel.text = (eqLabel.text ?? "") + "3"
    }
    
    @IBAction func button4Action(_ sender: Any) {
        eqLabel.text = (eqLabel.text ?? "") + "4"
    }
    
    
    @IBAction func button5Action(_ sender: Any) {
        eqLabel.text = (eqLabel.text ?? "") + "5"
    }
    
    @IBAction func button6Action(_ sender: Any) {
        eqLabel.text = (eqLabel.text ?? "") + "6"
    }
    
    
    @IBAction func button7Action(_ sender: Any) {
        eqLabel.text = (eqLabel.text ?? "") + "7"
    }
    
    
    @IBAction func button8Action(_ sender: Any) {
        eqLabel.text = (eqLabel.text ?? "") + "8"
    }
    
    @IBAction func button9Action(_ sender: Any) {
        eqLabel.text = (eqLabel.text ?? "") + "9"
    }
    
    
    @IBAction func buttonPlusAction(_ sender: Any) {
        eqLabel.text = (eqLabel.text ?? "") + "+"
    }
    
    
    @IBAction func buttonMinusAction(_ sender: Any) {
        eqLabel.text = (eqLabel.text ?? "") + "-"
    }
    
    
    @IBAction func buttonTimesAction(_ sender: Any) {
        eqLabel.text = (eqLabel.text ?? "") + "*"
    }
    
    
    @IBAction func buttonDivideAction(_ sender: Any) {
        
        if let text = eqLabel.text {
            eqLabel.text = text + "/"
        }
    }
    
    
    @IBAction func buttonEqualAction(_ sender: Any) {
        
        if let eq = eqLabel.text {
            if let result = evaluateEquation(eq) {
                NumLabel.text = String(result)
            }
        }
      
        
    }
    
  
    @IBAction func dotButtonAction(_ sender: Any) {
        eqLabel.text = (eqLabel.text ?? "") + "."
    }
    
    @IBAction func delButtonAction(_ sender: Any) {
        eqLabel.text?.removeLast()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
        
    }


}

