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

class ExploreVC: UIViewController {
    
    @IBOutlet weak var lblAreaOfStudy: UILabel!
    
    @IBOutlet weak var lblAreaOfStudyDesc: UILabel!
    
    @IBOutlet weak var imgvAreasOfStudy: UIImageView!
    
    @IBOutlet weak var lblImgCitation: UILabel!
    
    // Data structures located in data.swift
    // Citations included in Assignment2_Citations.md
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        imgvAreasOfStudy.image = UIImage(named: studyImages[0])
        lblAreaOfStudy.text = areasOfStudyHeadings[0]
        lblAreaOfStudyDesc.text = areasOfStudyDescs[0]
        lblImgCitation.text = citationLabels[0]
        
    }
    
    @IBAction func pgPicAndDesc(_ sender: UIPageControl) {
        imgvAreasOfStudy.image = UIImage(named: studyImages[sender.currentPage])
        lblAreaOfStudy.text = areasOfStudyHeadings[sender.currentPage]
        lblAreaOfStudyDesc.text = areasOfStudyDescs[sender.currentPage]
        lblImgCitation.text = citationLabels[sender.currentPage]
    }
    

    

}
