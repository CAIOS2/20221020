//
//  recipesVC.swift
//  CIOS20221020
//
//  Created by Dmitrij Aneicik on 2022-10-25.
//

import UIKit

class recipesVC: UIViewController {

    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeLabels: UILabel!
    
    var indexRow:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipeLabels.text = recipes[indexRow]

        recipeImage.image = UIImage(named: "rec\(indexRow + 1)")
        recipeImage.layer.cornerRadius = recipeImage.frame.width / 2
        recipeImage.layer.shadowColor = UIColor.black.cgColor
        recipeImage.layer.shadowRadius = 20
        recipeImage.layer.shadowOffset = CGSize(width: 5, height: 5)
        recipeImage.layer.shadowOpacity = 0
    }
    
    

  
}
