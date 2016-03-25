//
//  ALStackViewController.swift
//  ALProblems
//
//  Created by Jack Cox on 2/16/15 edit by Eric Stroh 3/25/2016.
//  Copyright © 2015 CapTech Consulting. All rights reserved.
//

import UIKit

class ALStackViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    @IBAction func addItem(sender: AnyObject) {
        let items = stackView.arrangedSubviews.count
        let label = UILabel()
        label.text = "Label \(items)"
        self.stackView.insertArrangedSubview(label, atIndex: items-1)
    }
    @IBAction func removeItem(sender: AnyObject) {
        let items = stackView.arrangedSubviews.count
        
        if (items > 1) { // the last item is the buttons stackView don't remove
            let viewToRemove = stackView.arrangedSubviews[items-2]
            self.stackView.removeArrangedSubview(viewToRemove)
            viewToRemove.removeFromSuperview()
        }
    }
    @IBAction func goCrazy(sender: AnyObject) {
        for _ in 1...8 {
            self.addItem(sender)
        }
        
    }
    
    @IBAction func dismiss(){
        dismissViewControllerAnimated(true, completion: nil)
    }
}
