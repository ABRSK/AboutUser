//
//  WelcomeViewController.swift
//  AboutUser
//
//  Created by Андрей Барсук on 29.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

  @IBOutlet var displayNameLabel: UILabel!
  
  @IBOutlet var topWelcomeLabel: UILabel!
  @IBOutlet var bottomWelcomeLabel: UILabel!
  
  @IBOutlet var logOutButton: UIButton!
  
  var currentUser: User!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    displayNameLabel.text = currentUser.userProfile.displayName
    
    topWelcomeLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sagittis metus elementum eros dictum, non iaculis risus varius."
    bottomWelcomeLabel.text = "Suspendisse lobortis hendrerit risus vitae aliquet. Proin eu ullamcorper nisi. Praesent finibus id risus eget vulputate. Proin orci nunc, tempor sed vehicula quis, porttitor et risus."
    
    logOutButton.layer.cornerRadius = 15
      
  }


}

