//
//  TableViewCell.swift
//  ScreenTimePrs
//
//  Created by Tannen Hall on 1/4/19.
//  Copyright © 2019 Tannen Hall. All rights reserved.
//

import UIKit

class CellController: UITableViewCell {
    @IBOutlet fileprivate var chore: UILabel!
    
    @IBAction func approve(_ sender: UIButton){

        self.chore.text = Session.instance.choreText
        
        
    }
    
    @IBAction func addbutton(_ sender: UIButton){
        
        self.chore.text = Session.instance.choreText
        
    }
}

