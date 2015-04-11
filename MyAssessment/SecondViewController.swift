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
    
    @IBOutlet weak var selectedButtonLabel: UILabel!
    var buttonPressed: Int?
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if buttonPressed == 1 {
            self.view.backgroundColor = UIColor.blueColor()
            
        } else if buttonPressed == 2 {
            self.view.backgroundColor = UIColor.redColor()
            
        } else if buttonPressed == 3 {
            self.view.backgroundColor = UIColor.greenColor()
            
        }
        
        selectedButtonLabel.text = "button pressed is \(buttonPressed!)"
    }
}