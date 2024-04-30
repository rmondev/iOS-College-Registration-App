//
//  
//  Assignment2
//
//  Created by Riccardo Moncada on 2023-10-03.
//
//
//  Student ID: 129698213
//  Title: Assignment 2
//  Date: Friday October 6, 2023
//  Course: MAP253 NSA
//  Instructor: Rohit Gaur

import UIKit

class Registration3VC: UIViewController {
    
    @IBOutlet weak var txtPrimeEmail: UITextField!
    @IBOutlet weak var txtSecondaryEmail: UITextField!
    @IBOutlet weak var lblLastAttended: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblLastAttendedYears: UILabel!
    @IBOutlet weak var stpShowYearsSince: UIStepper!
    @IBOutlet weak var lblWarning: UILabel!
    @IBOutlet weak var pvRegProgress: UIProgressView!
    
    var receivedFname: String?
    var receivedLname: String?
    var receivedAddress: String?
    var receivedCity: String?
    var receivedProvince: String?
    var receivedPostalCode: String?
    var receivedPhone1: String?
    var receivedPhone2: String?
    
    var persEmail = ""
    var secdEmail = ""
    var ageStr = ""
    var age = 0
    
    var recNewsletter = true
    var attendedInPast = false
    var strLastAttendedYears = ""
    var lastAttendYears = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblLastAttendedYears.isHidden = true
        stpShowYearsSince.isHidden = true
        lblLastAttended.isHidden = true
        
        pvRegProgress.setProgress(0.50, animated: true)
    }

    @IBAction func newsLetterResp(_ sender: UISwitch) {
        if sender.isOn {
            recNewsletter = false
        } else {
            recNewsletter = true
        }
    }

    @IBAction func pastAttendResp(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 1 {
            attendedInPast = true
            lblLastAttendedYears.isHidden = false
            lblLastAttendedYears.text = "0"
            stpShowYearsSince.isHidden = false
            lblLastAttended.isHidden = false
            
        } else {
            lblLastAttendedYears.isHidden = true
            stpShowYearsSince.isHidden = true
            lblLastAttended.isHidden = true
            attendedInPast = false
            print(attendedInPast)
        }
    }
    
    @IBAction func stpYearsSince(_ sender: UIStepper) {
        lblLastAttendedYears.text = String(Int(sender.value))
    }
    
    
    @IBAction func changeAge(_ sender: UISlider) {
        lblAge.text = "\(String(Int(sender.value)))"
    }
    
    @IBAction func nextPage(_ sender: Any) {
        
        if txtPrimeEmail.text?.isEmpty ?? true{
            lblWarning.isHidden = false
            lblWarning.text = "An Email Address is Required"
        }
        else {
            
            // If it's not empty, hide the warning label
            lblWarning.isHidden = true
            
            persEmail = txtPrimeEmail.text ?? ""
            secdEmail = txtSecondaryEmail.text ?? ""
            ageStr = lblAge.text ?? ""
            
            strLastAttendedYears = lblLastAttendedYears.text ?? ""
            
            guard let regAckVC = storyboard?.instantiateViewController(withIdentifier: "SIDAckRegistrationVC") as? RegInfoAcknowledge else {
                print("Could not find screen")
                return
            }
            
            regAckVC.receivedFirstName = receivedFname ?? ""
            regAckVC.receivedLastName = receivedLname ?? ""
            regAckVC.receivedAddress = receivedAddress ?? ""
            regAckVC.receivedCity = receivedCity ?? ""
            regAckVC.receivedProvince = receivedProvince ?? ""
            regAckVC.receivedPostalCode = receivedPostalCode ?? ""
            regAckVC.receivedPhone1 = receivedPhone1 ?? ""
            regAckVC.receivedPhone2 = receivedPhone2 ?? ""
            regAckVC.receivedPersEmail = persEmail
            regAckVC.receivedSecondEmail = secdEmail
            regAckVC.receivedAge = ageStr
            regAckVC.receivedNewsletter = recNewsletter
            regAckVC.receivedPastAttended = attendedInPast
            regAckVC.receivedPastAttendedYears = strLastAttendedYears
            
            self.present(regAckVC, animated: true)
        }
    }
}
