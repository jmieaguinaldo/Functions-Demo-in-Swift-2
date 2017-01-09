//
//  ViewController.swift
//  Functions Demo
//
//  Created by Jamie Rose Aguinaldo on 04/01/2017.
//  Copyright © 2017 Jamie Rose Aguinaldo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblOne: UILabel!
    @IBOutlet weak var lblOutput: UILabel!
    @IBOutlet weak var txtFName: UITextField!
    @IBOutlet weak var txtLName: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Display a function without a return value
       setTextToLblOne()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setTextToLblOne() {
         lblOne.text = "This is label one."
    }
    
    func setTextToLblTwo(fname: String, lname:String, age:Int) -> String{
        return fname + " " + lname + " " + String(age)
    }
    
    @IBAction func fetchInfo(_ sender: Any) {
        // Display a function with multiple parameters
        let fname:String = txtFName.text!
        let lname:String = txtLName.text!
        let age:Int = Int(txtAge.text!)!
        
        lblOutput.text = setTextToLblTwo(fname: fname, lname: lname, age: age)
    }
    
}

