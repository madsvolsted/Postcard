//
//  ViewController.swift
//  Postcard
//
//  Created by Mads Pedersen on 5/15/15.
//  Copyright (c) 2015 volsted. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextfield: UITextField!
    @IBOutlet weak var enterMessageTextfield: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button 
        messageLabel.text = enterMessageTextfield.text
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.redColor()

        nameLabel.text = enterNameTextfield.text
        nameLabel.textColor = UIColor.blueColor();
        nameLabel.hidden = false
        
        enterNameTextfield.text = ""
        enterNameTextfield.resignFirstResponder()
        
        enterMessageTextfield.text = ""
        enterMessageTextfield.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

