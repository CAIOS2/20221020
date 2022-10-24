//
//  restaurantInfoViewController.swift
//  CIOS20221020
//
//  Created by Deividas Zabulis on 2022-10-24.
//

import UIKit

class restaurantInfoViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var shadowView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.borderWidth = 1
        imageView.layer.masksToBounds = false
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.cornerRadius = imageView.frame.height/2
        imageView.clipsToBounds = true
        shadowView.layer.shadowOpacity = 1
        shadowView.layer.shadowColor = UIColor.yellow.cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 0)
        shadowView.layer.shadowRadius = 20
        shadowView.layer.borderWidth = 1
        shadowView.layer.masksToBounds = false
        shadowView.layer.borderColor = UIColor.black.cgColor
        shadowView.layer.cornerRadius = shadowView.frame.height/2
        shadowView.clipsToBounds = false
        // Do any additional setup after loading the view.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
