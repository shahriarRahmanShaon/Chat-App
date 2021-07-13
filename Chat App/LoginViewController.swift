//
//  LoginViewController.swift
//  Chat App
//
//  Created by sergio shaon on 13/7/21.
//

import UIKit
class LoginViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "loginToChat", sender: sender)
    }
}
