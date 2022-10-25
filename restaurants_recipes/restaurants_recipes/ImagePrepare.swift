//
//  imagePrepare.swift
//  restaurants_recipes
//
//  Created by nonamekk on 2022-10-25.
//

import UIKit

class ImagePrepare {
    static func prepareAll(inputView: UIImageView) -> UIImageView {
        return prepareBorders(
            ImagePrepare.prepareShadow(
                inputView),
            color: UIColor.white.cgColor
        )
    }
    
    static func prepareShadow(_ inputView: UIImageView) -> UIImageView {
        inputView.layer.shadowRadius = 50
        inputView.layer.shadowOpacity = 0.3
        inputView.layer.shadowColor = UIColor.black.cgColor
        inputView.layer.shadowOffset = CGSize(width: 50, height: 50)
        return inputView
    }
    
    static func prepareBorders(_ inputView: UIImageView, color: CGColor) -> UIImageView {
        inputView.layer.borderColor = color
        inputView.layer.borderWidth = 1
        return inputView
    }
}
