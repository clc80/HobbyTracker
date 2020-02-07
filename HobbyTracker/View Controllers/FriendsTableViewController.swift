//
//  FriendsTableViewController.swift
//  HobbyTracker
//
//  Created by Claudia Contreras on 2/5/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

class FriendsTableViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet var tableView: UITableView!
    
    //Table View Data Source
    var friends: [Friend] = [Friend(name: "Claudia", hometown: "Chualar", hobbies: ["Reading", "Coding", "Walking"])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
}

//MARK: - Extensions
extension FriendsTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendTableViewCell else { return UITableViewCell() }
        
        let friend = friends[indexPath.row]
        
        cell.nameLabel.text = friend.name
        cell.hometownLabel.text = friend.hometown
        cell.numOfHobbiesLabel.text = "\(friend.hobbies.count) hobbies"
        
        return cell
    }
}


//Conform to the protocol from addFriendView Controller
extension FriendsTableViewController: AddFriendDelegate {
    
    //This will get called when the addFriendViewController tells us that it created a friend.
    func friendWasCreated(friend: Friend) {
        friends.append(friend)
        
        //go and call the numberOfRowsInSection/cell for Row at to create a new cell
        tableView.reloadData()
    }
}
