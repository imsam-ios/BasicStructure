//
//  CellEmailNotification.swift
//  TheWeedTube
//
//  Created by Sweta Vani on 12/02/19.
//  Copyright © 2019 Sagar Moradia. All rights reserved.
//

import UIKit

class CellEmailNotification: UITableViewCell {
    
    @IBOutlet weak var lblName : UILabel!
    @IBOutlet weak var cntrlSwitch : PVSwitch!
    @IBOutlet weak var imgViewSwitch : UIImageView!
    
    var objGeneralData : GENERAL!{
        didSet{
            
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
         selectionStyle = .none
    }
    
}
