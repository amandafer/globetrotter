//
//  ColourTab.swift
//  Globetrotter
//
//  Created by Amanda Fernandes on 02/04/2017.
//  Copyright © 2017 Amanda Fernandes. All rights reserved.
//

import UIKit

@IBDesignable
class ColourTab: UITabBarController {
    @IBInspectable var barBgColor: UIColor? {
        didSet {
            self.tabBar.barTintColor = barBgColor
            self.tabBar.isTranslucent = false
        }
    }
    
    @IBInspectable var textColor: UIColor? {
        didSet {
            self.tabBar.tintColor = textColor
        }
    }
}

extension UITabBar {
    
    // Changes the height of the Tab Bar to 58
    override open func sizeThatFits(_ size: CGSize) -> CGSize {
        super.sizeThatFits(size)
        var sizeThatFits = super.sizeThatFits(size)
        sizeThatFits.height = 58 // wated height
        return sizeThatFits
    }
}
