//
//  FriendTableViewCell.swift
//  HobbyTracker
//
//  Created by Claudia Maciel on 2/5/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets
  
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var homeTownLabel: UILabel!
    @IBOutlet var numOfHobbiesLabel: UILabel!
    
    //make a reference to our friend object and call the updateview function
    var friend: Friend? {
        didSet {
            self.updateViews()
        }
    }
    
    private func updateViews() {
        guard let friend = friend else {return}
        
        //use our friend object to fill in the data
        nameLabel.text = friend.name
        homeTownLabel.text = friend.hometown
        numOfHobbiesLabel.text = "\(friend.hobbies.count) hobbies"
    }

}
