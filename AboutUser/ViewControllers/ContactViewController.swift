//
//  ContactViewController.swift
//  AboutUser
//
//  Created by Андрей Барсук on 29.03.2022.
//

import UIKit

class ContactViewController: UIViewController {
  
  @IBOutlet var displayNameLabel: UILabel!
  @IBOutlet var firstAndLastNameLabel: UILabel!
  
  @IBOutlet var phoneNumberLabel: UILabel!
  @IBOutlet var emailLabel: UILabel!
  
  var currentUser: User!
  
  override func viewDidLoad() {
    super.viewDidLoad()
      
    displayNameLabel.text = currentUser.userProfile.displayName
    firstAndLastNameLabel.text = "\(currentUser.userProfile.firstName) \(currentUser.userProfile.lastName)"
    
    phoneNumberLabel.text = "Phone: \(currentUser.userProfile.contacts.phoneNumber)"
    emailLabel.text = "Email: \(currentUser.userProfile.contacts.email)"
  }


}

