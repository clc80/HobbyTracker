//
//  AddFriendViewController.swift
//  HobbyTracker
//
//  Created by Claudia Contreras on 2/5/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

// ******************************************************************************
protocol AddFriendDelegate {
    
    //table view controller will add this function to add the newly created friend to the friends array
    func friendWasCreated(friend: Friend)
}
//********************************************************************************

class AddFriendViewController: UIViewController {
    
    //Delegate - the table view controller knows who its delegate is
    var delegate: AddFriendDelegate?

    //MARK: - IBOutlets
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var hometownTextField: UITextField!
    @IBOutlet var hobby1TextField: UITextField!
    @IBOutlet var hobby2TextField: UITextField!
    @IBOutlet var hobby3TextField: UITextField!
    
    //MARK: - IBActions
    @IBAction func SaveButtonTapped(_ sender: Any) {
        
        //get the info from the text fields
        guard let name = nameTextField.text,
        let hometown = hometownTextField.text,
            !name.isEmpty,
            !hometown.isEmpty else {return}
        
        var hobbies: [String] = []
        
        if let hobby1 = hobby1TextField.text, !hobby1.isEmpty {
            hobbies.append(hobby1)
        }
        if let hobby2 = hobby2TextField.text, !hobby2.isEmpty {
            hobbies.append(hobby2)
        }
        if let hobby3 = hobby3TextField.text, !hobby3.isEmpty {
            hobbies.append(hobby3)
        }
        
        //make a new friend
        let newFriend = Friend(name: name, hometown: hometown, hobbies: hobbies)
        
        //Add it to the array of friends in the table view controller/delegate
        //This controller is saying: TVC - go call the function
        delegate?.friendWasCreated(friend: newFriend)
        
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
