//
//  SecondViewController.swift
//  Reminders
//
//  Created by Ryan Aubrey on 2/20/16.
//  Copyright © 2016 Ryan Aubrey. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtTask: UITextField!
    
    @IBOutlet weak var txtDesc: UITextField!
    
    @IBOutlet weak var dateTime: UIDatePicker!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let currentDate = NSDate()
        dateTime.minimumDate = currentDate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    //UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print("In should return")
        textField.resignFirstResponder()
        return true
    }
    
    //MARK: Utilities
    func convertDateToString(dateTime: UIDatePicker) -> String{
        let tempDate = dateTime.date
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "EEE: MM-dd-YYYY hh:mm"
        let string = dateFormatter.stringFromDate(tempDate)
        return string 
    }
    
    //Events
    @IBAction func btnAddTsk_Click(sender: UIButton){
        let tempDateTime = convertDateToString(dateTime)
        taskMgr.addTask(txtTask.text!, desc: txtDesc.text!, dateTime: tempDateTime)
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        dateTime.setDate(NSDate(), animated: true)
        self.tabBarController?.selectedIndex = 0
    }
    
    

}

