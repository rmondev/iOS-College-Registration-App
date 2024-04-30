//
//  WelcomeVC.swift
//  Assignment2
//
//  Created by Riccardo Moncada on 2023-10-02.
//
//
//  Student ID: 129698213
//  Title: Assignment 2
//  Date: Friday October 6, 2023
//  Course: MAP253 NSA
//  Instructor: Rohit Gaur

import UIKit

class WelcomeVC: UIViewController {
    
    @IBOutlet weak var txtNameField: UITextField!
    @IBOutlet weak var lblNameWarning: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func chkIfNameIsEntered(_ sender: Any) {
        
        
        // Check if the text field is empty
        if txtNameField.text?.isEmpty ?? true {
            // If it's empty, show the warning label and set its text
            lblNameWarning.isHidden = false
            lblNameWarning.text = "Name Required"
        } else {
            // If it's not empty, hide the warning label
            lblNameWarning.isHidden = true
            
            // Set the value of the existing 'name' variable
            name = txtNameField.text ?? ""
            
            // Check if 'name' is not empty before performing the segue
            if !name.isEmpty {
                // Perform the segue to the next view controller
                performSegue(withIdentifier: "WelcomeToHomePageSegue", sender: self)
            }
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "WelcomeToHomePageSegue" {
            if let destinationVC = segue.destination as? HomePageVC {
                destinationVC.receivedName = name
            }
        }
    }
}





