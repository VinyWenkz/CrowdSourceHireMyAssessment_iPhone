//
//  ThirdViewController.swift
//  MyAssessment
//
//  Created by DGBendicion on 4/12/15.
//  Copyright (c) 2015 DGBendicion. All rights reserved.
//

import Foundation
import UIKit


class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var datesTableView: UITableView!
    
    var datesFromToday : [NSDate] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datesTableView.delegate = self
        datesTableView.dataSource = self
        
        loadDates()
    }

    func loadDates() {
        var date = NSDate()
        datesFromToday.append(date)
        let calendar = NSCalendar.currentCalendar()
        var daysIncrement: NSTimeInterval = 0.0
        let oneDayIncrement: NSTimeInterval = 60 * 60 * 24
        daysIncrement = oneDayIncrement
        
        for var index = 0; index < 12; index++ {
            datesFromToday.append(date.dateByAddingTimeInterval(daysIncrement))
            daysIncrement += oneDayIncrement
        }
        
        datesTableView.reloadData()
        
    }
    
    //MARK: -UITableView
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datesFromToday.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("dateCell") as UITableViewCell
        
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd MMMM yyyy"
        
        cell.textLabel?.text = dateFormatter.stringFromDate(self.datesFromToday[indexPath.row])
        
        return cell
    }
    
}


