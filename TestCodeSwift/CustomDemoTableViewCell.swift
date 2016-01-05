//
//  CustomDemoTableViewCell.swift
//  TestCodeSwift
//
//  Created by Vien Vu  on 1/5/16.
//  Copyright © 2016 VienVu. All rights reserved.
//

import UIKit

class CustomDemoTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewDemo: UIImageView!
    @IBOutlet weak var textLabelDemo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
