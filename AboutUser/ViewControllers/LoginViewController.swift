//
//  LoginViewController.swift
//  AboutUser
//
//  Created by Андрей Барсук on 29.03.2022.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

  @IBOutlet var usernameTextField: UITextField!
  @IBOutlet var passwordTextField: UITextField!
  @IBOutlet var logInButton: UIButton!
  
  private let username = defaultUser.username
  private let password = defaultUser.password
  
  override func viewDidLoad() {
    super.viewDidLoad()
      
    logInButton.layer.cornerRadius = 15
      
  }
  
  // Переделать сброс ввода правильно
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    view.endEditing(true)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let tabBarController = segue.destination as? UITabBarController else { return }
    guard let viewControllers = tabBarController.viewControllers else { return }
    
    for viewController in viewControllers {
      if let welcomeVC = viewController as? WelcomeViewController {
        welcomeVC.currentUser = defaultUser
      } else if let aboutVC = viewController as? AboutViewController {
        aboutVC.currentUser = defaultUser
      } else if let contactVC = viewController as? ContactViewController {
        contactVC.currentUser = defaultUser
      }
    }
    
  }
  
  @IBAction func logInButtonPressed() {
    if usernameTextField.text != "username" || passwordTextField.text != "password" {
      showLoginFailedAlert()
    }
  }
  
  @IBAction func needAHintButtonPressed() {
    showAlert(
      with: "Forgot your username?",
      and:  """
            Maybe it is something like:
             
            \(username)?
            """
        // Знаю, не безопасно, зато точно не ошибетесь :)
    )
  }
  
  @IBAction func forgotPasswordButtonPressed() {
    showAlert(
        with: "Forgot your password?",
        and: """
             It might be something like:
             
             \(password)?
             """
        // Знаю, не безопасно, зато точно не ошибетесь :)
    )
  }
  
  
  @IBAction func unwind(for segue: UIStoryboardSegue) {
      usernameTextField.text = ""
      passwordTextField.text = ""
  }

}

// MARK: - Private methods
extension LoginViewController {
  
  private func showLoginFailedAlert() {
      
      let title = "Login Failed!"
      let message = "Incorrect username or password! Please try again."
      
      let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
      let tryAgainAction = UIAlertAction(title: "Try Again", style: .default) { _ in
          self.passwordTextField.text = ""
      }
      alert.addAction(tryAgainAction)
      present(alert, animated: true)
  }
  
  private func showAlert(with title: String, and message: String) {
      let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
      let closeAction = UIAlertAction(title: "Close", style: .cancel)
      
      alert.addAction(closeAction)
      present(alert, animated: true)
  }
  
  func textFieldShouldReturn(_ field: UITextField) -> Bool {
      if field.returnKeyType == .next {
        passwordTextField.becomeFirstResponder()
      } else if field.returnKeyType == .done {
          logInButtonPressed()
          performSegue(withIdentifier: "TabBarController", sender: nil)
      }
      
      return true
  }
  
}
