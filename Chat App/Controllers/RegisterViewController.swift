//
//  RegisterViewController.swift
//  Chat App
//
//  Created by sergio shaon on 13/7/21.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet var RegisterDetailsButton: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RegisterDetailsButton.forEach { button in
            CornerRadiusAndShadowDecoration(cornerRadius: 20, on: button)
        }
      
    }
}

func CornerRadiusAndShadowDecoration( cornerRadius: CGFloat, on component: UIView)  {
    component.layer.masksToBounds = true
    component.layer.cornerRadius = cornerRadius
    component.layer.masksToBounds = true
    component.layer.shadowRadius = 50
}

