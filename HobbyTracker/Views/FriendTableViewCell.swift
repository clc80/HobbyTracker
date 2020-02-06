//
//  FriendTableViewCell.swift
//  HobbyTracker
//
//  Created by Claudia Contreras on 2/5/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    //MARK: - IBOutlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var hometownLabel: UILabel!
    @IBOutlet var numOfHobbiesLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
