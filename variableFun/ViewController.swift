//
//  ViewController.swift
//  variableFun
//
//  Created by CAMERON BRADFORD on 8/26/24.
//

import UIKit
//Steps to get return key to dismiss keyboard
//1: add a delegate
//2: attatch the delegate to textfield
//3: Write textFieldShouldReturn function

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    let pony = 6 //declared and initialized constant type inference
    var dog = 7.5 //declared and initialized variable
    var cat: Int? //declared optional(can be nil) variable type Int
    var horse: Double! //declaring non-optional variable
    //var ant: String //declaring a variable
    var bean = "Beans"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldOutlet.delegate = self
        //converting pony to a double
        print(Double(pony) + dog)
        
        //exclamation point forces an unwrap of cat
       //print(cat! + 5)
        
        //safe unwrap
        if let blah = cat{
            print(blah + 5)
            print("Blah is \(blah)")
        }
        else{
            print("error")
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        //gets text out of text field
        var pig = textFieldOutlet.text!
        textFieldOutlet.resignFirstResponder()
        // nil coalescing, giving default value if nil
        var frog = Int(pig) ?? 0
        print(frog + 5)
    }
    
    //automatically gets called when user hits return on phone keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldOutlet.resignFirstResponder()
        
    }
    
    
    
    
}

