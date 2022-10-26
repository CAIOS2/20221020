//
//  recipesVC.swift
//  CIOS20221020
//
//  Created by Dmitrij Aneicik on 2022-10-25.
//

import UIKit

class recipesVC: UIViewController {

    @IBOutlet weak var recipeImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        recipeImage.image = UIImage(named: "rest1")
        recipeImage.layer.cornerRadius = recipeImage.frame.width / 2
        recipeImage.layer.shadowColor = UIColor.black.cgColor
        recipeImage.layer.shadowRadius = 20
        recipeImage.layer.shadowOffset = CGSize(width: 5, height: 5)
        recipeImage.layer.shadowOpacity = 0
    }
    
    

  
}
