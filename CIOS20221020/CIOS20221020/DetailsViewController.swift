//
//  DetailsViewController.swift
//  CIOS20221020
//
//  Created by GK on 2022-10-25.
//

import UIKit

class DetailsViewController: UIViewController {

    
    @IBOutlet weak var recordType: UILabel!
    @IBOutlet weak var recordTitle: UILabel!
    @IBOutlet weak var recordImageTitle: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        recordType.text = selectedRecordType
        recordTitle.text = selectedRecordTitle
        recordImageTitle.text = selectedRecordimageTitle
        image.image = UIImage(named: selectedRecordimageTitle)
        image.layer.cornerRadius = image.frame.height/2
        image.layer.borderColor = UIColor.black.cgColor
        image.layer.borderWidth = 1
        image.layer.shadowColor = UIColor.darkGray.cgColor
        image.layer.shadowOpacity = 5
        image.layer.shadowOffset = CGSize.zero
        image.layer.shadowRadius = 20
      //  image.layer.masksToBounds = false
        

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
