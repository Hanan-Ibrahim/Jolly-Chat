//
//  LoginViewController.swift
//  Jolly Chat
//
//  Created by Hanoudi on 7/11/20.
//  Copyright © 2020 Hanan. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    //  MARK:- Outlets
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    //  MARK:- UI functions
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    let errorMessage = e as! String
                    print(errorMessage)
                    let alert = UIAlertController(title: "Login Error", message: "Incorrect password or email.", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                } else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
    }
}
