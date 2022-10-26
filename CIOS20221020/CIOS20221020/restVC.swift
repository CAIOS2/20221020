//
//  restVC.swift
//  CIOS20221020
//
//  Created by Dmitrij Aneicik on 2022-10-25.
//

import UIKit

class restVC: UIViewController {

    @IBOutlet weak var restimage: UIImageView!
    @IBOutlet weak var restLabel: UILabel!
    
    var indexRow:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        restLabel.text = restaurants[indexRow]
        
        restimage.image = UIImage(named: "rest\(indexRow + 1)")
        restimage.layer.cornerRadius = restimage.frame.width / 2
        restimage.layer.shadowColor = UIColor.black.cgColor
        restimage.layer.shadowRadius = 20
        restimage.layer.shadowOffset = CGSize(width: 5, height: 5)
        restimage.layer.shadowOpacity = 0
    }
    


}
