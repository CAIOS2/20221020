//
//  RecipeDetailsViewController.swift
//  restaurants_recipes
//
//  Created by nonamekk on 2022-10-20.
//

import UIKit

class RecipeDetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = ImagePrepare.prepareAll(inputView: imageView)
        let data = Shared.shared.resData!
        nameLabel.text = data.name
        imageView.image = data.photo
        if let description = data.description {
            descriptionLabel.text = description
        }
    }
}
