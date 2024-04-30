//
//  User.swift
//  Assignment2
//
//  Created by Riccardo Moncada on 2023-10-06.
//

import Foundation

class User {
    var fname: String
    var lname: String
    var address: String
    var city: String
    var province: String
    var postalCode: String
    var phone1: String
    var phone2: String
    var primeEmail: String
    var secondEmail: String
    var newsletter: Bool
    var attendedInPast: Bool
    var yearsLastAttended: String
    
    init(fname: String, lname: String, address: String, city: String, province: String, postalCode: String, phone1: String, phone2: String, primeEmail: String, secondEmail: String, newsletter: Bool, attendedInPast: Bool, yearsLastAttended: String) {
        self.fname = fname
        self.lname = lname
        self.address = address
        self.city = city
        self.province = province
        self.postalCode = postalCode
        self.phone1 = phone1
        self.phone2 = phone2
        self.primeEmail = primeEmail
        self.secondEmail = secondEmail
        self.newsletter = newsletter
        self.attendedInPast = attendedInPast
        self.yearsLastAttended = yearsLastAttended
    }
    
    func printUserInfo() -> String{
        var userStr: String
        
        userStr = "New User:\n" + "========\n" +
        "Name: \(self.fname)" + " \(self.lname)\n" +
        "Address: \(self.address)\n" +
        "City: \(self.city)\n" +
        "Province: \(self.province)\n" +
        "Postal Code: \(self.postalCode)\n" +
        "Phone1: \(self.phone1)\n" +
        "Phone2: \(self.phone2)\n" +
        "Primary Email: \(self.primeEmail)\n" +
        "Secondary Email: \(self.secondEmail)\n" +
        "Subscribed to Newsletter?: \(self.newsletter)\n" +
        "Attended in the Past?: \(self.attendedInPast)\n" +
        "Years Since Last Attended: \(self.yearsLastAttended)"
        
        return userStr
    }
    
}
