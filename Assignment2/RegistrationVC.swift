//
//  RegistrationVCViewController.swift
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

class RegistrationVC: UIViewController {

    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var lblNameWarning: UILabel!
    
    var firstName = ""
    var lastName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextPage(_ sender: UIButton) {
        
        // Check if the text field is empty
        if  txtFirstName.text?.isEmpty ?? true && txtLastName.text?.isEmpty ?? true {
            // If it's empty, show the warning label and set its text
            lblNameWarning.isHidden = false
            lblNameWarning.text = "First Name and Last Name Required"
        }
        else if txtLastName.text?.isEmpty ?? true{
            lblNameWarning.isHidden = false
            lblNameWarning.text = "Last Name Required"
        }
        else if txtFirstName.text?.isEmpty ?? true {
            lblNameWarning.text = "First Name Required"
        }
        else {
            // If it's not empty, hide the warning label
            lblNameWarning.isHidden = true

            // Set the value of the existing 'name' variable
            firstName = txtFirstName.text ?? ""
            lastName = txtLastName.text ?? ""

            guard let regScreen = storyboard?.instantiateViewController(withIdentifier: "SID2ndRegistrationVC") as? Registration2VC else {
                print("Could not find screen")
                return
            }
            
            
            regScreen.receivedFirstName = firstName
            regScreen.receivedLastName = lastName
            
            self.present(regScreen, animated: true)
        }
    }
}
