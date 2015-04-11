//
//  SecondViewController.swift
//  MyAssessment
//
//  Created by DGBendicion on 4/11/15.
//  Copyright (c) 2015 DGBendicion. All rights reserved.
//

import Foundation
import UIKit


class SecondViewController : UIViewController {
    
    var backgroundColor : UIColor?
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.view.backgroundColor = backgroundColor
    }
}