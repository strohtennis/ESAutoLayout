//
//  ViewController.swift
//  ESAutoLayoutExamples
//
//  Created by Eric Stroh on 3/25/16.
//  Copyright © 2016 com.EricStroh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let storyboards:[String:String] = ["Scrolling Example":"ScrollingView", "StackView Example":"StackView","AutoSize TableCell Example":"AutoSizeTableCell","Animation Example":"Animation"]
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
extension ViewController: UITableViewDataSource{
    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return storyboards.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let storyBoardKeys = [String](storyboards.keys)
        cell.textLabel?.text = storyBoardKeys[indexPath.row]
        cell.textLabel?.textColor = UIColor.blueColor()
        return cell
    }
}

extension ViewController: UITableViewDelegate{

    // MARK: - Table view data delegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let storyboardNames = [String](storyboards.values)
        let storyboard = UIStoryboard(name: storyboardNames[indexPath.row], bundle: NSBundle.mainBundle())
        let viewController = storyboard.instantiateInitialViewController()
        
        if let viewController = viewController {
            self.presentViewController(viewController, animated: true, completion: nil)
        }
    }



}

