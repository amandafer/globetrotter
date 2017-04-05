//
//  KeyboardController.swift
//  Globetrotter
//
//  Created by Amanda Fernandes on 04/04/2017.
//  Copyright © 2017 Amanda Fernandes. All rights reserved.
//

import UIKit

class KeyboardController: UIViewController {
    // Dismiss keyboard
    /**
     * Called when 'return' key pressed. return NO to ignore.
 
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
    */
}
