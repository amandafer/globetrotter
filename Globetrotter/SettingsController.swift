//
//  SettingsController.swift
//  Globetrotter
//
//  Created by Amanda Fernandes on 05/04/2017.
//  Copyright © 2017 Amanda Fernandes. All rights reserved.
//

import UIKit
import Parse

class SettingsController: UITableViewController {
    
    @IBAction func logoutBtn(_ sender: Any) {
        PFUser.logOut()
        
        performSegue(withIdentifier: "showLogin", sender: self)
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
