//
//  ViewController.swift
//  BasicCalculator
//
//  Created by Sai Manikanta on 2/1/16.
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
     
     // dot function
    @IBAction func dot(sender: AnyObject) {
     let dot = sender.currentTitle
    outputScreen.text = outputScreen.text! + dot!!
     }
     
     // Input Numbers

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
     // Addition Operation
     {
          result = firstNumber + secondNumber
     } 
     
     // Subraction operation
     else if operation == "-"
     {
          result = firstNumber - secondNumber
     }
     // sin function of trigonometry, Converting radians to degree for better known results
     else if operation == "sin"
     {
          result = sin(Float(M_PI) * (firstNumber/180))
     } 
     // Multiplication operation
     else if operation == "X"
     {
          result = firstNumber * secondNumber
     } 
     // Division Operation
     else if operation == "÷"
     {
          result = firstNumber / secondNumber
     } 
     // Square root for the number
     else if operation == "√"
     {
        result = sqrt(firstNumber)
        } else if operation == "1/x"
     {
        result = 1 / firstNumber
     }
     // cosine operation from trigonometry
     else if operation == "cos"
     {
        result = cos(Float(M_PI) * (firstNumber/180))
     }
     // Similiarlly tan function from trigonometry
     else if operation == "tan"
     {
        result = tan(Float(M_PI) * (firstNumber/180))
        } 
        //percentage operation
        else if operation == "%"
     {
        result = ( firstNumber * secondNumber ) / 100
        } 
        // logarithm function with base 10
        else if operation == "log10"
     {
        result = log10 ( firstNumber )
        } 
        // power function with number x having power n
        else if operation == "xⁿ"
     {
        result = powf(firstNumber, secondNumber)
        }
     outputScreen.text = "\(result)"
    }
    
    //All clear function clears the screen and operations that we have done before, here i am converting output text to Int for better result
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




