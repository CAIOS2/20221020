//
//  ViewController.swift
//  CIOS20221020
//
//  Created by Tadas Petrikas on 2022-10-20.
//

import UIKit

class ViewController: UIViewController {

    var greeting = "Hello World"
    
    @IBOutlet weak var helloLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        hello()
        
        // Do any additional setup after loading the view.
    }

    func hello(){
        helloLabel.text = greeting
    }
}

