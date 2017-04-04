//
//  SignUpController.swift
//  Globetrotter
//
//  Created by Amanda Fernandes on 04/04/2017.
//  Copyright © 2017 Amanda Fernandes. All rights reserved.
//

import UIKit

class SignUpController: UIViewController {
    @IBOutlet weak var nameField: RoundTextField!
    @IBOutlet weak var usernameField: RoundTextField!
    @IBOutlet weak var emailField: RoundTextField!
    @IBOutlet weak var passwordField: RoundTextField!

    @IBAction func signUpBtn(_ sender: Any) {
        if nameField.text == "" || usernameField.text == "" ||
            emailField.text == "" || passwordField.text == "" {
            let alert = UIAlertController(title: "ERROR: Form incomplete.", message: "Please enter valid information on the required fields.", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                //self.dismiss(animated: true, completion: nil)
            }))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
