//
//  ViewController.swift
//  Test Dynamic Cells
//
//  Created by Sam Walker on 11/2/15.
//  Copyright © 2015 Sam Walker. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet var heightConstraint: NSLayoutConstraint!
}

class ViewController: UITableViewController {

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        if let cell: CustomCell = tableView.cellForRowAtIndexPath(indexPath) as? CustomCell {
//            cell.heightConstraint.constant += 21
//            cell.contentView.layoutIfNeeded()
//            tableView.beginUpdates()
//            tableView.endUpdates()
//        }
    }

}

