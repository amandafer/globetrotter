//
//  LogInController.swift
//  Globetrotter
//
//  Created by Amanda Fernandes on 05/04/2017.
//  Copyright © 2017 Amanda Fernandes. All rights reserved.
//

import UIKit
import Parse

class LogInController: UIViewController {
    @IBOutlet weak var usernameField: RoundTextField!
    @IBOutlet weak var passwordField: RoundTextField!

    @IBAction func logInBtn(_ sender: Any) {
        if let username = usernameField.text, let password = passwordField.text {
            PFUser.logInWithUsername(inBackground: username, password: password) { (user, error) in
                
                if error != nil {
                    var displayErrorMessage = "Please try again later."
                    
                    // Returns the error message to the user (ie. "Account already exists for username")
                    if let errorMessage = (error! as NSError).userInfo["error"] as? String {
                        displayErrorMessage = errorMessage
                    }
                    
                    self.createAlert(title: "Could not log in", message: displayErrorMessage, dismissView: false)
                } else {
                    print("login successful")
                    self.performSegue(withIdentifier: "showHome", sender: self)
                }
            }
        }
    }
    
    // function that creates alerts for the user
    func createAlert(title: String?, message: String?, dismissView: Bool) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            
            if (dismissView) {
                self.dismiss(animated: true, completion: nil)
            }
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Dismiss keyboard
    /**
     * Called when 'return' key pressed. return NO to ignore.
     */
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Try to find next responder
        if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        } else {
            // Not found, so remove keyboard.
            textField.resignFirstResponder()
        }
        
        return true
    }
    
    /**
     * Called when the user click on the view (outside the UITextField).
     */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
