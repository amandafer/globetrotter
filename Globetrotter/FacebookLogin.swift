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

class FacebookLogin: UIViewController {
    
    @IBAction func facebookBtnTapped(_ sender: Any) {
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) {(result, error) in
            if error != nil {
                print("ERROR: Unable to authenticate with Facebook.")
            } else if result?.isCancelled == true {
                print("ERROR: User canceled Facebook authentication.")
            } else {
                print("ERROR: Successufully logged in with Facebook.")
            }
        }
    }
}
