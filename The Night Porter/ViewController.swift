//
//  ViewController.swift
//  The Night Porter
//
//  Created by Yang Lu on 11/15/17.
//  Copyright © 2017 7. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    // create task arrays
    let dailyTasks = ["Check all windows",
                      "Check all doors",
                      "Check temperature of freezer",
                      "Check the mailbox at the end of the lane",
                      "Empty trash containers",
                      "If freezing, check water pipes outside"]
    
    let weeklyTasks = ["Check inside all unoccupied cabins",
                       "Run all faucets for 30 seconds",
                       "Walk the perimeter of property",
                       "Arrange for dumpster pickup"]
    
    let twoWeekTasks = ["Run tests on security alarm",
                        "Check all motion detectors",
                        "Test smoke alarms"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0:
            return dailyTasks.count
        case 1:
            return weeklyTasks.count
        case 2:
            return twoWeekTasks.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        var currentTask: String
        switch indexPath.section{
        case 0:
            currentTask = dailyTasks[indexPath.row]
        case 1:
            currentTask = weeklyTasks[indexPath.row]
        case 2:
            currentTask = twoWeekTasks[indexPath.row]
        default:
            currentTask = ""
        }
        
        cell.textLabel!.text = currentTask
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0:
            return "Daily Tasks"
        case 1:
            return "Weekly Tasks"
        case 2:
            return "Every two weeks"
        default:
            return "This should not be here"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

