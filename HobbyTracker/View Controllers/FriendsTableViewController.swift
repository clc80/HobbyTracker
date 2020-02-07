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
    var friend: [Friend] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
