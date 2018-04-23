//
//  ViewController.swift
//  GuardOptional
//
//  Created by macbook on 4/22/18.
//  Copyright © 2018 Jaminya. All rights reserved.
//
// Reference: https://medium.com/@mimicatcodes/unwrapping-optional-values-in-swift-3-0-guard-let-vs-if-let-40a0b05f9e69



import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var occupationTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func submitButton(_ sender: Any) {
        
        guard let firstName = nameTextField.text, firstName != "" else {
            print("Name is empty")
            return
        }
        
        guard let age = ageTextField.text, age != "" else {
            print("Age is empty")
            return
        }
        
        guard let city = cityTextField.text, city != "" else {
            print("City is empty")
            return
        }
        
        guard let occupation = occupationTextField.text, occupation != "" else {
            print("Occupation is empty")
            return
        }
        
        let aboutMe = "My name is \(firstName.capitalized). I am \(age) years old and live in \(city.capitalized). I am a \(occupation)."
        print("\(aboutMe)")
    }
}

