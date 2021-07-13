//
//  ViewController.swift
//  Chat App
//
//  Created by sergio shaon on 11/7/21.
//

import UIKit
import FirebaseFirestore

class ViewController: UIViewController {
    
    @IBOutlet var initialButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = ""
        navigationItem.hidesBackButton = true
        
        //MARK:- viewMofication
        initialButtons.forEach { button in
            button.layer.cornerRadius = button.frame.height/3
        }
    }


}

