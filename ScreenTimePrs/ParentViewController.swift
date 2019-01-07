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
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var button = 0

    
    @IBAction func buttoncell(_ sender: UIButton) {
        print("Button Pushed")
        
        
    }
    let myTitles = ["Chores Completed", "Chores Pending"]
    
    var myIndex = 0
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return(Session.instance.taskName.count)
    }

    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return myTitles[section]
    }
    
    override func didChangeValue(forKey : String) {
        print("This was called")
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        cell.task.text = Session.instance.taskName[indexPath.row]
        cell.amountOfScreenTime.text = Session.instance.screenTime[indexPath.row]
        cell.index = indexPath.row
        cell.tableViewOutlet = self.tableViewOutlet
        print("Row = ", indexPath.row)
        return(cell)
        
    }
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        print("My index = ", myIndex)
    }
    
   /* func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            Session.instance.taskName.remove(at: indexPath.row)
            Session.instance.screenTime.remove(at: indexPath.row)
            tableView.reloadData()
            print(Session.instance.screenTime)
            print(Session.instance.taskName)
        }
        
    }*/
    
    @IBAction func addButton(_ sender: UIButton){
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
        tableViewOutlet.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


