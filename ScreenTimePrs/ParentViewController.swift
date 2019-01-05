//
//  ParentViewController.swift
//  ScreenTimePrs
//
//  Created by Tannen Hall on 12/27/18.
//  Copyright © 2018 Tannen Hall. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController {
    
    @IBOutlet fileprivate var welcomeText: UITextField!
    @IBOutlet fileprivate var addChore: UITextField!
    
    @IBAction func addButton(_ sender: UIButton){
        Session.instance.choreText = self.addChore.text!
    }
    
    @IBAction func logout(_ sender: UIButton){
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Parent View Loaded")
        print(Session.instance.username)
        self.welcomeText.text = "Hello, " + Session.instance.username
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


