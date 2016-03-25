//
//  ALTableViewController.swift
//  ALProblems
//
//  Created by Jack Cox on 2/16/15 edit by Eric Stroh 3/25/2016.
//  Copyright (c) 2015 CapTech Consulting. All rights reserved.
//

import UIKit

class ALTableViewController: UITableViewController {

    var catImages:[UIImage] = []
    var labelValues:[String] = []
    var items = ["SpongeBob Toy","Microwave Oven, Chrome 1200W","1967 Ferrari Testarossa 330 P4"]
    var costs = ["$19.99","$649.99","$12,798,900"]
    
     let newText = "Gummi bears muffin cotton candy lollipop. Cake pudding sweet candy gummi bears sweet biscuit tart. Lollipop tart wafer sugar plum."
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 50.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
        self.tableView.registerNib(UINib(nibName: "AutoSizeTableCell", bundle: nil), forCellReuseIdentifier: "AutoSizeTableCell")
        self.tableView.registerNib(UINib(nibName: "ALTableViewCell", bundle: nil), forCellReuseIdentifier: "ALTableViewCell")
        self.tableView.registerNib(UINib(nibName: "ItemCostCell", bundle: nil), forCellReuseIdentifier: "ItemCostCell")
        
        
        // generate random cat pictures and text
        let words = newText.componentsSeparatedByString(" ")
        for i in 1...12 {
            catImages.append(UIImage(named:"th-\(i)")!)
            
            var labelValue = ""
            for _ in 1...40 {
                labelValue += words[random() % words.count]
                labelValue += " "
            }
            labelValues.append(labelValue)
        }
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 4
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch(section){
            case 0: return 1
            case 1: return catImages.count
            case 2: return 3
            case 3: return 1
            default: return 0
        }
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        switch(indexPath.section){
            case 0:let cell = tableView.dequeueReusableCellWithIdentifier("AutoSizeTableCell", forIndexPath: indexPath) as!    AutoSizeTableCell
                cell.title?.text = "The quick brown fox jumps over the lazy dog, catches the tiger by his tail and never lets it go."
                return cell
            case 1: let cell = tableView.dequeueReusableCellWithIdentifier("ALTableViewCell", forIndexPath: indexPath) as! ALTableViewCell
                cell.imageContent?.image = self.catImages[indexPath.row]
                cell.title?.text = labelValues[indexPath.row]
                return cell
            case 2: let cell = tableView.dequeueReusableCellWithIdentifier("ItemCostCell", forIndexPath: indexPath) as! ItemCostCell
                cell.title?.text = items[indexPath.row]
                cell.costLabel?.text = costs[indexPath.row]
                return cell
            default:
                let cell = UITableViewCell()
                cell.textLabel?.text = "Dismiss View Controller"
                return cell
        }
    }
    
    // MARK: - Table view data delegate
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if (indexPath.section == 3){
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
}
