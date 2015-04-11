//
//  ViewController.swift
//  MyAssessment
//
//  Created by DGBendicion on 4/11/15.
//  Copyright (c) 2015 DGBendicion. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, WriteValueInFirstViewControllerDelegate  {
    
    var selectedColorButtonTag : Int?
    @IBOutlet weak var blueColorUIButton: UIButton!
    @IBOutlet weak var redColorUIButton: UIButton!
    @IBOutlet weak var greenColorUIButton: UIButton!
    @IBOutlet weak var statusLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of  any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == SegueIdentifier.showSecondViewController.rawValue as String {
            if let destinationVC = segue.destinationViewController as? SecondViewController {
                destinationVC.buttonColorPressed = selectedColorButtonTag
                destinationVC.writeValueBackDelegate = self
            }
        }
    }
    
    //MARK: -IBAction
    @IBAction func buttonClicked(sender: UIButton) {
        selectedColorButtonTag = sender.tag
        performSegueWithIdentifier(SegueIdentifier.showSecondViewController.rawValue as String, sender: self)
    }
    
    //MARK: -WriteValueInFirstViewControllerDelegate
    func updateLabelWithInfo(info: String) {
        if info.isEmpty {
            statusLabel.text = "None"
        } else {
            statusLabel.text = "button pressed is \(info)"
        }
    }


}

