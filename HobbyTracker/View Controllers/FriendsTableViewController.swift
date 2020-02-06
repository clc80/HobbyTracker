//
//  FriendsTableViewController.swift
//  HobbyTracker
//
//  Created by Claudia Maciel on 1/30/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

class FriendsTableViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet var tableView: UITableView!
    
    //MARK: - Properties
    var friends: [Friend] = [Friend(name: "Claudia", hometown: "Chualar", hobbies: ["Reading", "Coding", "Walking"])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

}

//MARK: = IBAction


//MARK: - Extensions

extension FriendsTableViewController: UITableViewDelegate {
}

extension FriendsTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath) as? FriendTableViewCell else {return UITableViewCell()}
        let friend = friends[indexPath.row]
        cell.friend = friend
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddFriendSegue" {
            let addFriendVC = segue.destination as! AddFriendViewController
            
            addFriendVC.delegate = self
            
        }
    }
}

extension FriendsTableViewController: AddFriendDelegate{
    func friendWasCreated(_ friend: Friend) {
        self.friends.append(friend)
        tableView.reloadData()
    }
}

//Delegate
//1. Adopt and conform to delegate/protocol
//2. Set self as delegate when delegator is created
