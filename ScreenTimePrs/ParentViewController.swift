//
//  ParentViewController.swift
//  ScreenTimePrs
//
//  Created by Tannen Hall on 12/27/18.
//  Copyright © 2018 Tannen Hall. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet fileprivate var welcomeText: UITextField!
    @IBOutlet fileprivate var addChore: UITextField!
    
    var taskName = ["Sweep the floors", "Wash the Windows", "Feed the dog"]
    
    var screenTime = ["30min", "80min", "20min"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return(taskName.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        cell.task.text = taskName[indexPath.row]
        return(cell)
        
    }
    
    
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


