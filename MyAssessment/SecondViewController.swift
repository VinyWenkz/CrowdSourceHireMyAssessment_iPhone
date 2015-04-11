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
    var buttonColorPressed: Int?
    var selectedNumberName: String?
    var writeValueBackDelegate: WriteValueInFirstViewControllerDelegate?
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if buttonColorPressed != nil {
            if buttonColorPressed == 1 {
                self.view.backgroundColor = UIColor.blueColor()
                
            } else if buttonColorPressed == 2 {
                self.view.backgroundColor = UIColor.redColor()
                
            } else {
                self.view.backgroundColor = UIColor.greenColor()
                
            }
            
            selectedButtonLabel.text = "button pressed is \(buttonColorPressed!)"
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        if self.isBeingDismissed() || self.isMovingFromParentViewController(){
            if selectedNumberName != nil {
            writeValueBackDelegate?.updateLabelWithInfo(selectedNumberName!)
            } else {
                writeValueBackDelegate?.updateLabelWithInfo("")
            }
        }
    }

    //MARK: -IBAction
    @IBAction func numberButtonPressed(sender: UIButton) {
        if sender.tag == 1 {
            selectedNumberName = "ONE"
        } else if sender.tag == 2 {
            selectedNumberName = "TWO"
        } else {
            selectedNumberName = "THREE"
        }
        
        navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func goLastButtonClicked(sender: UIButton) {
        performSegueWithIdentifier(SegueIdentifier.showThirdViewController.rawValue as String, sender: self)
    }
}