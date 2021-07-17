//
//  ViewController.swift
//  adminPanelApp
//
//  Created by Karpinets Alexander on 13.07.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - Private properties
    private let user = UserLogin(userNameLogin: "Alexander", password: "Password")
    //    private let userName = "Name"
    //    private let password = "Password"
    
    //MARK: - Life cycle methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.userUILabel = nameTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        if nameTextField.text != user ||
            passwordTextField.text != user {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password")
            return
        }
    }
    
    //MARK: - IBActions
    @IBAction func forgotUNButton(_ sender: UIButton) {
        showAlert(title: "Le pardon!😎",
                  message: "Your Name is - 'Name'!")
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        showAlert(title: "Le pardon!😎",
                  message: "Your Password is - 'Password'!")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        nameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - Extensions
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK",
                                          style: .default) { _ in
            self.nameTextField.text = ""
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
