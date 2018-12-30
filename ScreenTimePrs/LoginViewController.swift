//
//  ViewController.swift
//  ScreenTimePrs
//
//  Created by Tannen Hall on 12/27/18.
//  Copyright © 2018 Tannen Hall. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet fileprivate var usernameField: UITextField!
    @IBOutlet fileprivate var passwordField: UITextField!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.usernameField.text = "Tannen"
        self.passwordField.text = "Dad"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

