//
//  LoginViewController.swift
//  Chat App
//
//  Created by sergio shaon on 13/7/21.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        if let emailField = emailField.text, let passWordField = passwordField.text{
            FirebaseAuthentication().FirebaseSignInAndSignOutWithEmaillPass(
                method: "signIn",
                email: emailField,
                password: passWordField,
                segueController: self,
                segueIdentifier: "loginToChat",
                sender: sender)
        }
    }
}
