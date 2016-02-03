//
//  ViewController.swift
//  BasicCalculator
//
//  Created by Manikanta Mahesh Byra on 2/1/16.
//  Copyright © 2016 Sai Manikanta. All rights reserved.
//

import UIKit
import Darwin

class ViewController: UIViewController {
    @IBOutlet weak var outputScreen: UILabel!
     
     var firstNumber = Float()
     var secondNumber = Float()
     var isTypingNumber = false
     var result = Float()
     var operation = ""
     
    @IBAction func dot(sender: AnyObject) {
     let dot = sender.currentTitle
    outputScreen.text = outputScreen.text! + dot!!
     }

    @IBAction func numbers(sender: AnyObject) {
     let numbers = sender.currentTitle
     if isTypingNumber == true {
          outputScreen.text = outputScreen.text! + numbers!!
     }
     else {
          outputScreen.text = numbers;
     }
     isTypingNumber = true
     }
    @IBAction func operations(sender: AnyObject) {
     isTypingNumber = false
     firstNumber = Float(outputScreen.text!)!
     operation = sender.currentTitle!!
    }
   
    @IBAction func equals(sender: AnyObject) {
     secondNumber = Float(outputScreen.text!)!
     if operation == "+"
     {
          result = firstNumber + secondNumber
     } else if operation == "-"
     {
          result = firstNumber - secondNumber
     }else if operation == "sin"
     {
          result = sin(Float(M_PI) * (firstNumber/180))
     } else if operation == "X"
     {
          result = firstNumber * secondNumber
     } else if operation == "÷"
     {
          result = firstNumber / secondNumber
     } else if operation == "√"
     {
        result = sqrt(firstNumber)
        } else if operation == "1/x"
     {
        result = 1 / firstNumber
     }else if operation == "cos"
     {
        result = cos(Float(M_PI) * (firstNumber/180))
     }else if operation == "tan"
     {
        result = tan(Float(M_PI) * (firstNumber/180))
        } else if operation == "%"
     {
        result = ( firstNumber * secondNumber ) / 100
        } else if operation == "log10"
     {
        result = log10 ( firstNumber )
        } else if operation == "xⁿ"
     {
        result = powf(firstNumber, secondNumber)
        }
     outputScreen.text = "\(result)"
    }
     @IBAction func allClear(sender: AnyObject) {
          firstNumber = 0
          secondNumber = 0
          isTypingNumber = false
          result = 0
          outputScreen.text = "\(Int(result))"
     }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




