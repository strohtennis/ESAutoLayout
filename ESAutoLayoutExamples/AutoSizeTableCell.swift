//
//  AutoSizeTableCell.swift
//  temp
//
//  Created by Eric Stroh on 3/22/16.
//  Copyright © 2016 com.EricStroh. All rights reserved.
//

import Foundation

import UIKit
import QuartzCore

class AutoSizeTableCell: UITableViewCell {
    
    
    @IBOutlet weak var title: UILabel?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        title?.layer.borderColor = UIColor.grayColor().CGColor
        title?.layer.borderWidth = 1.0
    }
    
}