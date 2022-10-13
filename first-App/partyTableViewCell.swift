//
//  partyTableViewCell.swift
//  first-App
//
//  Created by Macbook 2019 on 2022-10-02.
//

import UIKit

class partyTableViewCell: UITableViewCell {



    @IBOutlet weak var invitee: UILabel!
    @IBOutlet weak var color: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
