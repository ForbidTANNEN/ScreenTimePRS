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
    
    private var childName = "Tannen"
    private var childPass = "Child"
    
    private var parentName = "Chris"
    private var parentPass = "Parent"
    
    
    @IBAction func signIn(_ sender: UIButton){
        print("SignIn")
        if(self.usernameField.text?.lowercased() == parentName.lowercased() && self.passwordField.text?.lowercased() == parentPass.lowercased()){
            Session.instance.username = self.usernameField.text!.capitalized
            loadParentScreen()
        }
        else if(self.usernameField.text?.lowercased() == childName.lowercased() && self.passwordField.text?.lowercased() == childPass.lowercased()){
            Session.instance.username = self.usernameField.text!.capitalized
            loadChildScreen()
        }
        
        else{
            createAlert(title: "", message: "Incorrect Username or Password")
            self.usernameField.text = ""
            self.passwordField.text = ""
        }
        
    }
    
    func loadParentScreen(){
        self.performSegue(withIdentifier: "toParent", sender: self)
 }
    
    func loadChildScreen(){
        self.performSegue(withIdentifier: "toChild", sender: self)
    }
    
    func createAlert (title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action) in alert.dismiss(animated: true, completion: nil) }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.usernameField.text = ""
        self.passwordField.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

