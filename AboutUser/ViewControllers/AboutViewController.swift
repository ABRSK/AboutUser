//
//  AboutViewController.swift
//  AboutUser
//
//  Created by Андрей Барсук on 29.03.2022.
//

import UIKit

class AboutViewController: UIViewController {
  
  @IBOutlet var displayNameLabel: UILabel!
  @IBOutlet var firstAndLastNameLabel: UILabel!
  
  @IBOutlet var dateOfBirthLabel: UILabel!
  @IBOutlet var aboutUserLabel: UILabel!
  @IBOutlet var favoriteAnimalLabel: UILabel!
  @IBOutlet var favoriteBookLabel: UILabel!
  
  var currentUser: User!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    displayNameLabel.text = currentUser.userProfile.displayName
    firstAndLastNameLabel.text = "\(currentUser.userProfile.firstName) \(currentUser.userProfile.lastName)"
    
    dateOfBirthLabel.text = "Born on \(currentUser.userProfile.about.dateOfBirth)"
    aboutUserLabel.text = currentUser.userProfile.about.aboutText
    favoriteAnimalLabel.text = "Favorite animal: \(currentUser.userProfile.about.favoriteAnimal)"
    favoriteBookLabel.text = "Favorite book: \(currentUser.userProfile.about.favoriteBook)"
    
  }


}
