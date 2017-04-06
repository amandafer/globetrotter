//
//  FacebookLogin.swift
//  Globetrotter
//
//  Created by Amanda Fernandes on 04/04/2017.
//  Copyright © 2017 Amanda Fernandes. All rights reserved.
//

import UIKit
import Foundation
import FBSDKCoreKit
import FBSDKLoginKit
import Parse

class FacebookLoginController: UIViewController {
    
    @IBAction func facebookBtnTapped(_ sender: Any) {
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) {(result, error) in
            if error != nil {
                print("ERROR: Unable to authenticate with Facebook.")
            } else if result?.isCancelled == true {
                print("ERROR: User canceled Facebook authentication.")
            } else {
                
                self.performSegue(withIdentifier: "showHome", sender: self)
            }
        }
        
        //PFFacebookUtils.log
    }
    
    // Checks if the user is already signed in
    override func viewDidAppear(_ animated: Bool) {
        if PFUser.current() != nil {
            performSegue(withIdentifier: "showHome", sender: self)
        }
    }
}
