//
//  ViewControllerTableViewCell.swift
//  ScreenTimePrs
//
//  Created by Tannen Hall on 1/5/19.
//  Copyright © 2019 Tannen Hall. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {
    @IBOutlet weak var task: UILabel!
    @IBOutlet weak var amountOfScreenTime: UILabel!
    
    public var index = 0;
    public var tableViewOutlet: UITableView!
    
    @IBAction func deleteButton(_ sender: UIButton) {
        
        print("delete index=",index);
        Session.instance.screenTime.remove(at: index)
        Session.instance.taskName.remove(at: index)
        print(Session.instance.taskName)
        print(Session.instance.screenTime)
        tableViewOutlet.reloadData()
        }
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
