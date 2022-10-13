//
//  ViewController.swift
//  first-App
//
//  Created by Macbook 2019 on 2022-09-29.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func paspaustasMygtukas(_ sender: Any) {
        performSegue(withIdentifier: "perejimasVienas", sender: self)
    }
    
}

