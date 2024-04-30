//
//  HomePageVCViewController.swift
//  Assignment2
//
//  Created by Riccardo Moncada on 2023-10-02.
//
//  Student ID: 129698213
//  Title: Assignment 2
//  Date: Friday October 6, 2023
//  Course: MAP253 NSA
//  Instructor: Rohit Gaur

import UIKit

class HomePageVC: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAppDesc: UILabel!
    
    var receivedName: String?
    var appDescText = "This app was created for you to register for admission to Seneca Polytechnic. You are welcome to explore the areas of study on the next page before you register."
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = receivedName
        lblAppDesc.text = appDescText
        
    }
}
