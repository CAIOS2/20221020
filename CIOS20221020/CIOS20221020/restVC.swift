//
//  restVC.swift
//  CIOS20221020
//
//  Created by Dmitrij Aneicik on 2022-10-25.
//

import UIKit

class restVC: UIViewController {

    @IBOutlet weak var restimage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        restimage.image = UIImage(named: "rest1")
        restimage.layer.cornerRadius = restimage.frame.width / 2
        restimage.layer.shadowColor = UIColor.black.cgColor
        restimage.layer.shadowRadius = 20
        restimage.layer.shadowOffset = CGSize(width: 5, height: 5)
        restimage.layer.shadowOpacity = 0
    }
    


}
