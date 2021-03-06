//
//  WelcomeViewController.swift
//  adminPanelApp
//
//  Created by Karpinets Alexander on 13.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    
    var userUILabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLabel.text = userUILabel
    }
}
