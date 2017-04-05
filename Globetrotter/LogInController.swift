//
//  LogInController.swift
//  Globetrotter
//
//  Created by Amanda Fernandes on 05/04/2017.
//  Copyright © 2017 Amanda Fernandes. All rights reserved.
//

import UIKit

class LogInController: UIViewController {
    @IBOutlet weak var usernameField: RoundTextField!
    @IBOutlet weak var passwordField: RoundTextField!

    @IBAction func logInBtn(_ sender: Any) {
        
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
