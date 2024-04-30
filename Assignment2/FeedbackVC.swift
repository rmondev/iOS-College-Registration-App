//
//  FeedbackVC.swift
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

class FeedbackVC: UIViewController {

    @IBOutlet weak var txtFeedbackBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        txtFeedbackBox.frame.size.height = 240
        txtFeedbackBox.frame.size.width = 360
        
    }
    
}
