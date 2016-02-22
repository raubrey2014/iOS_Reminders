//
//  FirstViewController.swift
//  Reminders
//
//  Created by Ryan Aubrey on 2/20/16.
//  Copyright © 2016 Ryan Aubrey. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate {

    @IBOutlet weak var tblTasks: UITableView!
    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Return to view
    override func viewWillAppear(animated: Bool) {
        //this calls the functions below to update
        tblTasks.reloadData()
    }
    
    //UITABLEVIEW DELEGATE FUNCTIONS
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if editingStyle == UITableViewCellEditingStyle.Delete {
            print("Delete this row.")
            taskMgr.tasks.removeAtIndex(indexPath.row)
            tblTasks.reloadData()
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskMgr.tasks.count
    }
    
    
    //IndexPath updates to be correct index in the array
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        cell.textLabel!.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel!.text = taskMgr.tasks[indexPath.row].dateTime
        return cell
    }
    
   
    //Events
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath){
        print("Here is didselectrowatindexpath..\(indexPath.row)")
    }
}

