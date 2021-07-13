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
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func loginButton(_ sender: UIButton) {
    }
    
    @IBAction func forgotUNButton(_ sender: UIButton) {
        showAlert(title: "Le pardon!😎", message: "Your Name is - 'Name'!")
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        
    }
  
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "HOROSHO", style: .default) { _ in
            self.nameTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
  
}
