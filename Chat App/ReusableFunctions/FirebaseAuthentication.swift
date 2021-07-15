//
//  FirebaseAuthentication.swift
//  Chat App
//
//  Created by sergio shaon on 15/7/21.
//

import UIKit
import Firebase
class FirebaseAuthentication {
    func FirebaseSignInAndSignOutWithEmaillPass(
        method: String,
        email: String,
        password: String,
        segueController: UIViewController?,
        segueIdentifier: String?,
        sender: Any?) {
        if method == "signUp"{
            Auth.auth().createUser(withEmail: email, password: password) { result, error in
                self.authResultManagement(result: result, error: error, segueController: segueController, segueIdentifier: segueIdentifier, sender: sender)
            }
        }else if method == "signIn"{
            Auth.auth().signIn(withEmail: email, password: password) { result, error in
                self.authResultManagement(result: result, error: error, segueController: segueController, segueIdentifier: segueIdentifier, sender: sender)
            }
        }else{
           print("PleaseProdiveCorrectMethodName")
        }
    }
    //MARK:- verification
    private func authResultManagement(
        result: AuthDataResult?,
        error: Error?,
        segueController: UIViewController?,
        segueIdentifier: String?,
        sender: Any?) -> Void {
        if error != nil{
            print(error!.localizedDescription)
        }else{
            if let controller = segueController, let identifier = segueIdentifier {
                DispatchQueue.main.async {
                    controller.performSegue(withIdentifier: identifier, sender: sender)
                }
                
            }
            
        }
    }
    
}




