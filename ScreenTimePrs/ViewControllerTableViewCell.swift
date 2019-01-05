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
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
