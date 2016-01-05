//
//  ViewController.swift
//  TestCodeSwift
//
//  Created by Vien Vu  on 12/21/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    var indexSelected = -1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("abbc")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == indexSelected {
            return 44
        }
        return 100
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! CustomDemoTableViewCell
        
        cell.textLabelDemo.text = "cell \(indexPath.row)"
        cell.imageViewDemo.image = UIImage(named: "calendar-icons")
        
        if indexSelected == indexPath.row {
            cell.imageViewDemo.hidden = true
        } else {
            cell.imageViewDemo.hidden = false
        }
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       
//        if indexSelected != -1 {
//            let oldCell = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: indexSelected, inSection: 0)) as! CustomDemoTableViewCell
//            oldCell.imageViewDemo.hidden = false
//        }
        
        
        indexSelected = indexPath.row //update selected row
//        let cell = tableView.cellForRowAtIndexPath(indexPath) as! CustomDemoTableViewCell
//        cell.imageViewDemo.hidden = true
        
//        tableView.beginUpdates()
//        tableView.endUpdates()
        tableView.reloadData()
    }
}

