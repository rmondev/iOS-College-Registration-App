//
//  Registration2VC.swift
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

class Registration2VC: UIViewController {
    
    
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtProvince: UITextField!
    @IBOutlet weak var txtPostalCode: UITextField!
    @IBOutlet weak var txtPhone1: UITextField!
    @IBOutlet weak var txtPhone2: UITextField!
    @IBOutlet weak var lblWarning: UILabel!
    @IBOutlet weak var pvRegProgress: UIProgressView!
    
    var receivedFirstName: String?
    var receivedLastName: String?
    var address = ""
    var city = ""
    var province = ""
    var postalCode = ""
    var phone1 = ""
    var phone2 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pvRegProgress.setProgress(0.25, animated: true)
    }
    
    @IBAction func nextPage(_ sender: Any) {
        
        // Check if the text field is empty
        if  txtAddress.text?.isEmpty ?? true && txtCity.text?.isEmpty ?? true && txtProvince.text?.isEmpty ?? true && txtPostalCode.text?.isEmpty ?? true && txtPhone1.text?.isEmpty ?? true  {
            // If it's empty, show the warning label and set its text
            lblWarning.isHidden = false
            lblWarning.text = "Please Fill in All the Fields"
        }
        else if txtAddress.text?.isEmpty ?? true{
            lblWarning.isHidden = false
            lblWarning.text = "Address is Required"
        }
        else if txtCity.text?.isEmpty ?? true{
            lblWarning.isHidden = false
            lblWarning.text = "City is Required"
        }
        else if txtProvince.text?.isEmpty ?? true{
            lblWarning.isHidden = false
            lblWarning.text = "Province is Required"
        }
        else if txtPostalCode.text?.isEmpty ?? true {
            lblWarning.isHidden = false
            lblWarning.text = "Postal Code is Required"
        }
        else if txtPhone1.text?.isEmpty ?? true{
            lblWarning.isHidden = false
            lblWarning.text = "A Phone Number is Required"
        }
        else {
            // If it's not empty, hide the warning label
            lblWarning.isHidden = true
            
            // Set the value of the existing 'name' variabl
            address = txtAddress.text ?? ""
            city = txtCity.text ?? ""
            province = txtProvince.text ?? ""
            postalCode = txtPostalCode.text ?? ""
            phone1 = txtPhone1.text ?? ""
            phone2 = txtPhone2.text ?? ""
            
       
            if !address.isEmpty && !city.isEmpty && !province.isEmpty && !postalCode.isEmpty && !phone1.isEmpty {
                
                guard let reg3VC = storyboard?.instantiateViewController(withIdentifier: "SID3rdRegistrationVC") as? Registration3VC else {
                    print("Could not find screen")
                    return
                }
                
                reg3VC.receivedFname = receivedFirstName
                reg3VC.receivedLname = receivedLastName
                reg3VC.receivedAddress = address
                reg3VC.receivedCity = city
                reg3VC.receivedProvince = province
                reg3VC.receivedPostalCode = postalCode
                reg3VC.receivedPhone1 = phone1
                reg3VC.receivedPhone2 = phone2
                
                self.present(reg3VC, animated: true)
                
            }
        }
    }
}
