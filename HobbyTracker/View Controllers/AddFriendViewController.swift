//
//  AddFriendViewController.swift
//  HobbyTracker
//
//  Created by Claudia Maciel on 2/5/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

class AddFriendViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var homeTownTextField: UITextField!
    @IBOutlet var hobby1TextField: UITextField!
    @IBOutlet var hobby2TextField: UITextField!
    @IBOutlet var hobby3TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: - IBActions
    @IBAction func cancelButtonTapped(_ sender: Any) {
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
}
