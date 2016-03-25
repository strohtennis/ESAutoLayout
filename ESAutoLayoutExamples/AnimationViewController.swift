//
//  AnimationViewController.swift
//  temp
//
//  Created by Eric Stroh on 3/23/16.
//  Copyright © 2016 com.EricStroh. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {

    @IBOutlet weak var pinkView: UIView!
    @IBOutlet weak var buttonTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var button: UIButton!
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    @IBAction func buttonPressed(sender: AnyObject) {
        dispatch_async(dispatch_get_main_queue(), {[weak self] () -> Void in
            
            UIView.animateWithDuration(0.75, animations: { () -> Void in
                self?.pinkView.alpha = 1.0
                self?.buttonTopConstraint.constant = 126
                //the next line allow the constraint to animate
                self?.button.layoutIfNeeded()
                
                }, completion: { (Bool) -> Void in
                    
            })
            
        })
    }
    
    @IBAction func dismiss(){
        dismissViewControllerAnimated(true, completion: nil)
    }


}
