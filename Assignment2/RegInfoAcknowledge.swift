//
//  RegInfoAcknowledge.swift
//  Assignment2
//
//  Created by Riccardo Moncada on 2023-10-05.
//
//
//  Student ID: 129698213
//  Title: Assignment 2
//  Date: Friday October 6, 2023
//  Course: MAP253 NSA
//  Instructor: Rohit Gaur

import UIKit

class RegInfoAcknowledge: UIViewController {

    var receivedFirstName = ""
    var receivedLastName = ""
    var receivedAddress = ""
    var receivedCity = ""
    var receivedProvince = ""
    var receivedPostalCode = ""
    var receivedPhone1 = ""
    var receivedPhone2 = ""
    var receivedPersEmail = ""
    var receivedSecondEmail = ""
    var receivedAge = ""
    var receivedNewsletter = false
    var receivedPastAttended = false
    var receivedPastAttendedYears = ""
    
    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var lblProvince: UILabel!
    @IBOutlet weak var lblPostalCode: UILabel!
    @IBOutlet weak var lblPhone1: UILabel!
    @IBOutlet weak var lblPhone2: UILabel!
    @IBOutlet weak var lblPersonalEmail: UILabel!
    @IBOutlet weak var lblSecondEmail: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblNewsletter: UILabel!
    @IBOutlet weak var lblPastAttendance: UILabel!
    @IBOutlet weak var lblAttendedLast: UILabel!
 
    @IBOutlet weak var pvRegProgress: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pvRegProgress.setProgress(1.00, animated: true)
        
        lblFirstName.text = receivedFirstName
        lblLastName.text = receivedLastName
        lblAddress.text = receivedAddress
        lblCity.text = receivedCity
        lblProvince.text = receivedProvince
        lblPostalCode.text = receivedPostalCode
        lblPhone1.text = receivedPhone1
        lblPhone2.text = receivedPhone2
        lblPersonalEmail.text = receivedPersEmail
        lblSecondEmail.text = receivedSecondEmail
        lblAge.text = receivedAge
        lblNewsletter.text = receivedNewsletter ? "Yes" : "No"
        lblPastAttendance.text = receivedPastAttended ? "Yes" : "No"
        lblAttendedLast.text = receivedPastAttendedYears
        
    }
    
    
    @IBAction func submitAndRegisterUser(_ sender: UIButton) {
        
        let newUser = User(fname: receivedFirstName, lname: receivedLastName, address: receivedAddress, city: receivedCity, province: receivedProvince, postalCode: receivedPostalCode, phone1: receivedPhone1, phone2: receivedPhone2, primeEmail: receivedPersEmail, secondEmail: receivedSecondEmail, newsletter: receivedNewsletter, attendedInPast: receivedPastAttended, yearsLastAttended: receivedPastAttendedYears)
        
        
        print(newUser.printUserInfo())
    }
    
}
