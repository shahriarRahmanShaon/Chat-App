//
//  RegisterViewController.swift
//  Chat App
//
//  Created by sergio shaon on 13/7/21.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet var RegisterDetailsButton: [UITextField]!
    private var emailTextField: UITextField!
    private var passWordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RegisterDetailsButton.forEach { button in
            if button.placeholder == "Email"{
                emailTextField = button
            }else{
                passWordTextField = button
            }
            CornerRadiusAndShadowDecoration(cornerRadius: 20, on: button)
        }
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        if let emailField = emailTextField.text, let passWordField = passWordTextField.text{
            Auth.auth().createUser(withEmail: emailField, password: passWordField) { result, error in
                if error != nil{
                    print(error!.localizedDescription)
                }else{
                    self.performSegue(withIdentifier: "registerToChat", sender: sender)
                }
            }
        }
    }
}

func CornerRadiusAndShadowDecoration( cornerRadius: CGFloat, on component: UIView)  {
    component.layer.masksToBounds = true
    component.layer.cornerRadius = cornerRadius
    component.layer.masksToBounds = true
    component.layer.shadowRadius = 50
}


