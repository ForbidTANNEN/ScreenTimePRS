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
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return(Session.instance.taskName.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        cell.task.text = Session.instance.taskName[indexPath.row]
        cell.amountOfScreenTime.text = Session.instance.screenTime[indexPath.row]
        return(cell)
        
    }
    
    @IBAction func addButton(_ sender: UIButton){
        
         Session.instance.taskName.append("Take out the trash")
         Session.instance.screenTime.append("15min")
         self.loadView();
        print("button pushed")
        performSegue(withIdentifier: "toChoreViewController", sender: self)
        
        
        
    }
    
    @IBAction func logout(_ sender: UIButton){
        self.performSegue(withIdentifier: "toLogin", sender: self)
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


