//
//  ScrollingViewController.swift
//  temp
//
//  Created by Eric Stroh on 3/25/16.
//  Copyright © 2016 com.EricStroh. All rights reserved.
//

import UIKit

class ScrollingViewController: UIViewController {
    @IBOutlet weak var lotsaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    @IBAction func buttonPressed(sender: AnyObject) {
        lotsaLabel.text = lotsaLabel.text! + "The quick brown fox jumps over the lazy dog"//, steals his bone and runs off into the forest"
    }
    
    @IBAction func dismiss(){
        dismissViewControllerAnimated(true, completion: nil)
    }
}
