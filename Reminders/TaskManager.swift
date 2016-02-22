//
//  TaskManager.swift
//  Reminders
//
//  Created by Ryan Aubrey on 2/20/16.
//  Copyright © 2016 Ryan Aubrey. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task{
    var name = "Un-Named"
    var desc = "Un-Described"
    var dateTime = "Mon: 01-01-1970 12:00"
    
}


class TaskManager: NSObject {
    //Our array of tasks to fill our listview
    var tasks = [task]()
    
    func addTask(name: String, desc:String, dateTime:String){
        tasks.append(task(name: name, desc: desc, dateTime: dateTime))
//        tasks = orderArray(tasks)
    }
    
//    func orderArray(arr: [task]) -> [task]{
//        
//        let arr2 = arr.sort{ (lhs, rhs) in return Int(lhs.dateTime) < Int(rhs.dateTime) }
//        return arr2
//    }
}
