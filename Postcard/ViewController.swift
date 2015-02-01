//
//  ViewController.swift
//  Postcard
//
//  Created by tomaskrivda on 27/01/2015.
//  Copyright (c) 2015 que. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtunPressed(sender: UIButton) {
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.purpleColor()
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""

        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
    
        mailButton.setTitle("Mail Sent!", forState: UIControlState.Normal)
        
    }

}

