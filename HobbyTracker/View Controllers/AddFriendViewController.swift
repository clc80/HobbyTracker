//
//  AddFriendViewController.swift
//  HobbyTracker
//
//  Created by Claudia Maciel on 2/5/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

protocol AddFriendDelegate {
    func friendWasCreated(_ friend: Friend)
}

//******************************************************************************
//Delgator
//1: Create a protocol with the delegate name
//2: Create a delegate property of type (whatever your delgate name is )
//3: When needed, call the delegate method on the delegator
//******************************************************************************


//Responsible for creating a friend object
class AddFriendViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var homeTownTextField: UITextField!
    @IBOutlet var hobby1TextField: UITextField!
    @IBOutlet var hobby2TextField: UITextField!
    @IBOutlet var hobby3TextField: UITextField!
    
    //MARK: - Private Propoerty
    var delegate: AddFriendDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: - IBActions
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text,
            let homeTown = homeTownTextField.text,
            !name.isEmpty,
            !homeTown.isEmpty else {return}
        
        var friend = Friend(name: name, hometown: homeTown, hobbies: [])
        
        if let hobby1 = hobby1TextField.text,
            !hobby1.isEmpty {
            friend.hobbies.append(hobby1)
        }
        
        if let hobby2 = hobby2TextField.text,
            !hobby2.isEmpty {
            friend.hobbies.append(hobby2)
        }
        
        if let hobby3 = hobby3TextField.text,
                !hobby3.isEmpty {
                friend.hobbies.append(hobby3)
        }
        
        delegate?.friendWasCreated(friend)
        self.dismiss(animated: true)
        
    } //end saveButtonTapped
    
}
