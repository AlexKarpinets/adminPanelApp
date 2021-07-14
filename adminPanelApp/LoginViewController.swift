//
//  ViewController.swift
//  adminPanelApp
//
//  Created by Karpinets Alexander on 13.07.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let userName = "Name"
    let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.userUILabel = nameTextField.text
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        if nameTextField.text != userName,
           passwordTextField.text != password {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
            return
        }
    }
    
    @IBAction func forgotUNButton(_ sender: UIButton) {
        showAlert(title: "Le pardon!😎", message: "Your Name is - 'Name'!")
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        showAlert(title: "Le pardon!😎", message: "Your Password is - 'Password'!")
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let horoshoAction = UIAlertAction(title: "HOROSHO", style: .default) { nameTextField in
            self.nameTextField.text = ""
            self.passwordTextField.text = ""
        }
        alert.addAction(horoshoAction)
        present(alert, animated: true)
    }
}
