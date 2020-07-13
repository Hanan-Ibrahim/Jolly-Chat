//
//  ViewController.swift
//  Jolly Chat
//
//  Created by Hanoudi on 7/11/20.
//  Copyright © 2020 Hanan. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    //  MARK:- Outlets
    @IBOutlet weak var titleLabel: UILabel!
    
    //  MARK:- Welcome View LifeCycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // to allow back button to appear again in either login/register view
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //once view loads empty the label then animate it
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText = K.appName
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
       
    }
    

}
