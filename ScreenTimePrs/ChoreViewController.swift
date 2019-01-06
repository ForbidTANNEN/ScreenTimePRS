//
//  ChildViewController.swift
//  ScreenTimePrs
//
//  Created by Tannen Hall on 12/27/18.
//  Copyright © 2018 Tannen Hall. All rights reserved.
//

import UIKit

class ChoreViewController: UIViewController {
    
    @IBOutlet fileprivate var taskToComplete: UITextField!
    @IBOutlet fileprivate var amountTimeRewarded: UITextField!
    
    @IBAction func Finished(_ sender: UIButton) {
        
        Session.instance.taskName.append(taskToComplete.text!)
        Session.instance.screenTime.append(amountTimeRewarded.text!)
        print(Session.instance.taskName)
        print(Session.instance.screenTime)
        performSegue(withIdentifier: "toParentFromChore", sender: self)
    }
    
    
    @IBAction func back(_ sender: UIButton) {
        performSegue(withIdentifier: "toParentFromChore", sender: self)
    }
    
    
    
}




