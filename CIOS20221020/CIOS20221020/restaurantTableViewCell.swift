//
//  restaurantTableViewCell.swift
//  CIOS20221020
//
//  Created by Deividas Zabulis on 2022-10-24.
//

import UIKit

class restaurantTableViewCell: UITableViewCell {

    @IBOutlet weak var logoImage: UIImageView!
    
    @IBOutlet weak var restaurantLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func commonInit(_ imageName: String, restaurantName: String){
        logoImage.image = UIImage(named: imageName)
        restaurantLabel.text = restaurantName
    }
    
    
}
