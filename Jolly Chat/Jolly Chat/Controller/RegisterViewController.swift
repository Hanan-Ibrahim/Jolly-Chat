//
//  RegisterViewController.swift
//  Jolly Chat
//
//  Created by Hanoudi on 7/11/20.
//  Copyright © 2020 Hanan. All rights reserved.
//


import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    //  MARK:- Outlets
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    //  MARK:- UI Functions
    @IBAction func registerButtonPressed(_ sender: UIButton) {
       
        // grab hold of email and password but do optional chaining
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            // create new user
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e)
                } else {
                    //Navigate to the ChatViewController
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }
    
}
