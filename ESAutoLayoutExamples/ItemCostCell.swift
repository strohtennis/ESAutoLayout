//
//  ItemCostCell.swift
//  temp
//
//  Created by Eric Stroh on 3/22/16.
//  Copyright © 2016 com.EricStroh. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore

class ItemCostCell: UITableViewCell {
    
    
    @IBOutlet weak var title: UILabel?
    @IBOutlet weak var costLabel: UILabel?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        title?.layer.borderColor = UIColor.yellowColor().CGColor
        title?.layer.borderWidth = 1.0
        costLabel?.layer.borderColor = UIColor.greenColor().CGColor
        costLabel?.layer.borderWidth = 1.0
    }
    
}
