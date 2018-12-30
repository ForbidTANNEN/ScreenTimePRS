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
    
    
    @IBAction func signIn(_ sender: UIButton){
        print("SignIn")
        if(self.usernameField.text == "Chris" && self.passwordField.text == "Parent"){
            loadParentScreen()
        }
        else{
            loadChildScreen()
        }
        
    }
    
    func loadParentScreen(){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let parentViewController = storyBoard.instantiateViewController(withIdentifier: "ParentViewController") as! UIViewController
        self.present(parentViewController, animated: true, completion: nil)
    }
    
    func loadChildScreen(){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let childViewController = storyBoard.instantiateViewController(withIdentifier: "ChildViewController") as! UIViewController
        self.present(childViewController, animated: true, completion: nil)
    }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.usernameField.text = "Tannen"
        //self.passwordField.text = "Dad"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

