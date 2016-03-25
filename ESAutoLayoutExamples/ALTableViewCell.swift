//
//  ALTableViewCell.swift
//  ALProblems
//
//  Created by Jack Cox on 2/16/15 edit by Eric Stroh 3/25/2016.
//  Copyright (c) 2015 CapTech Consulting. All rights reserved.
//

import UIKit
import QuartzCore

class ALTableViewCell: UITableViewCell {


    @IBOutlet weak var title: UILabel?
    @IBOutlet weak var imageContent: UIImageView?
    override func awakeFromNib() {
        super.awakeFromNib()
        
        title?.layer.borderColor = UIColor.grayColor().CGColor
        title?.layer.borderWidth = 1.0
    }

}
