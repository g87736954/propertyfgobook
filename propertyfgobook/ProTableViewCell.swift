//
//  ProTableViewCell.swift
//  propertyfgobook
//
//  Created by User on 2019/2/16.
//  Copyright © 2019 g87. All rights reserved.
//

import UIKit

class ProTableViewCell: UITableViewCell {
    @IBOutlet weak var prolabel: UILabel!
    
    @IBOutlet weak var proimage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
